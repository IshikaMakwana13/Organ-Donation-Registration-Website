using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;

/// <summary>
/// Manages cryptographically secure, time-limited password reset tokens and password updates.
/// </summary>
public static class PasswordResetManager
{
    private static string ConnectionString
    {
        get { return ConfigurationManager.ConnectionStrings["OrganDB"].ConnectionString; }
    }

    /// <summary>
    /// Ensures the PasswordResetTokens table exists in the database.
    /// </summary>
    public static void EnsureDatabaseTableExists()
    {
        try
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                con.Open();
                string createTableSql = @"
                    IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='PasswordResetTokens' AND xtype='U')
                    BEGIN
                        CREATE TABLE [dbo].[PasswordResetTokens] (
                            [Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
                            [Email] VARCHAR(100) NOT NULL,
                            [Token] VARCHAR(200) NOT NULL,
                            [ExpiryDate] DATETIME NOT NULL,
                            [IsUsed] BIT NOT NULL DEFAULT 0,
                            [CreatedAt] DATETIME NOT NULL DEFAULT GETDATE()
                        );
                        CREATE INDEX IX_PasswordResetTokens_Email_Token ON [dbo].[PasswordResetTokens]([Email], [Token]);
                    END";

                using (SqlCommand cmd = new SqlCommand(createTableSql, con))
                {
                    cmd.ExecuteNonQuery();
                }
            }
        }
        catch
        {
            // Ignore error if table creation cannot be run directly (e.g. read-only permissions)
        }
    }

    /// <summary>
    /// Checks whether an account exists for the given email address.
    /// </summary>
    public static bool UserExistsByEmail(string email)
    {
        EnsureDatabaseTableExists();

        if (string.IsNullOrWhiteSpace(email))
            return false;

        using (SqlConnection con = new SqlConnection(ConnectionString))
        {
            con.Open();
            string sql = "SELECT COUNT(1) FROM [signup] WHERE LOWER([email]) = LOWER(@Email)";
            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                cmd.Parameters.AddWithValue("@Email", email.Trim());
                int count = (int)cmd.ExecuteScalar();
                return count > 0;
            }
        }
    }

    /// <summary>
    /// Generates a cryptographically random, URL-safe token, stores it in the database with an expiration time,
    /// and invalidates any previous unused tokens for the same user.
    /// </summary>
    public static string CreateResetToken(string email, int validityMinutes = 30)
    {
        EnsureDatabaseTableExists();

        if (string.IsNullOrWhiteSpace(email))
            return null;

        // Generate 32 bytes of cryptographic randomness
        byte[] tokenBytes = new byte[32];
        using (RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider())
        {
            rng.GetBytes(tokenBytes);
        }

        // Convert to URL-safe Base64 string
        string token = Convert.ToBase64String(tokenBytes)
            .Replace("+", "-")
            .Replace("/", "_")
            .Replace("=", "");

        DateTime expiryDate = DateTime.Now.AddMinutes(validityMinutes);

        using (SqlConnection con = new SqlConnection(ConnectionString))
        {
            con.Open();

            // Invalidate existing active tokens for this email
            string invalidateSql = "UPDATE [PasswordResetTokens] SET [IsUsed] = 1 WHERE LOWER([Email]) = LOWER(@Email) AND [IsUsed] = 0";
            using (SqlCommand cmdInvalidate = new SqlCommand(invalidateSql, con))
            {
                cmdInvalidate.Parameters.AddWithValue("@Email", email.Trim());
                cmdInvalidate.ExecuteNonQuery();
            }

            // Insert new secure token
            string insertSql = @"
                INSERT INTO [PasswordResetTokens] ([Email], [Token], [ExpiryDate], [IsUsed], [CreatedAt])
                VALUES (@Email, @Token, @ExpiryDate, 0, GETDATE())";

            using (SqlCommand cmdInsert = new SqlCommand(insertSql, con))
            {
                cmdInsert.Parameters.AddWithValue("@Email", email.Trim());
                cmdInsert.Parameters.AddWithValue("@Token", token);
                cmdInsert.Parameters.AddWithValue("@ExpiryDate", expiryDate);
                cmdInsert.ExecuteNonQuery();
            }
        }

        return token;
    }

    /// <summary>
    /// Validates whether the token is valid, unused, and not expired.
    /// </summary>
    public static bool ValidateToken(string email, string token, out string errorMessage)
    {
        EnsureDatabaseTableExists();
        errorMessage = string.Empty;

        if (string.IsNullOrWhiteSpace(email) || string.IsNullOrWhiteSpace(token))
        {
            errorMessage = "Invalid password reset request. Email and token are required.";
            return false;
        }

        using (SqlConnection con = new SqlConnection(ConnectionString))
        {
            con.Open();
            string sql = "SELECT TOP 1 [ExpiryDate], [IsUsed] FROM [PasswordResetTokens] WHERE LOWER([Email]) = LOWER(@Email) AND [Token] = @Token ORDER BY [Id] DESC";

            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                cmd.Parameters.AddWithValue("@Email", email.Trim());
                cmd.Parameters.AddWithValue("@Token", token.Trim());

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (!reader.Read())
                    {
                        errorMessage = "This password reset link is invalid. Please request a new one.";
                        return false;
                    }

                    DateTime expiryDate = reader.GetDateTime(0);
                    bool isUsed = reader.GetBoolean(1);

                    if (isUsed)
                    {
                        errorMessage = "This password reset link has already been used. Please request a new reset link.";
                        return false;
                    }

                    if (DateTime.Now > expiryDate)
                    {
                        errorMessage = "This password reset link has expired. Please request a new reset link.";
                        return false;
                    }
                }
            }
        }

        return true;
    }

    /// <summary>
    /// Resets the user's password in the signup table and marks the token as used.
    /// </summary>
    public static bool ResetPassword(string email, string token, string newPassword, out string errorMessage)
    {
        errorMessage = string.Empty;

        if (!ValidateToken(email, token, out errorMessage))
        {
            return false;
        }

        if (string.IsNullOrWhiteSpace(newPassword) || newPassword.Length < 6)
        {
            errorMessage = "Password must be at least 6 characters in length.";
            return false;
        }

        using (SqlConnection con = new SqlConnection(ConnectionString))
        {
            con.Open();
            using (SqlTransaction tx = con.BeginTransaction())
            {
                try
                {
                    // 1. Update password in signup table
                    string updatePasswordSql = "UPDATE [signup] SET [password] = @Password WHERE LOWER([email]) = LOWER(@Email)";
                    using (SqlCommand cmdUpdate = new SqlCommand(updatePasswordSql, con, tx))
                    {
                        cmdUpdate.Parameters.AddWithValue("@Password", newPassword.Trim());
                        cmdUpdate.Parameters.AddWithValue("@Email", email.Trim());
                        int rows = cmdUpdate.ExecuteNonQuery();

                        if (rows == 0)
                        {
                            tx.Rollback();
                            errorMessage = "Account not found. Please verify your email or create an account.";
                            return false;
                        }
                    }

                    // 2. Mark token as used
                    string markUsedSql = "UPDATE [PasswordResetTokens] SET [IsUsed] = 1 WHERE LOWER([Email]) = LOWER(@Email) AND [Token] = @Token";
                    using (SqlCommand cmdMark = new SqlCommand(markUsedSql, con, tx))
                    {
                        cmdMark.Parameters.AddWithValue("@Email", email.Trim());
                        cmdMark.Parameters.AddWithValue("@Token", token.Trim());
                        cmdMark.ExecuteNonQuery();
                    }

                    tx.Commit();
                    return true;
                }
                catch (Exception ex)
                {
                    tx.Rollback();
                    errorMessage = "An unexpected error occurred while updating your password: " + ex.Message;
                    return false;
                }
            }
        }
    }
}
