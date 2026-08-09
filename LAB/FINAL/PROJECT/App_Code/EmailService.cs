using System;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Configuration;
using System.Web;

/// <summary>
/// Service for sending transactional emails such as Password Reset notifications.
/// </summary>
public static class EmailService
{
    public static bool SendPasswordResetEmail(string recipientEmail, string resetUrl, int expiryMinutes, out string statusMessage)
    {
        statusMessage = string.Empty;

        // Retrieve configuration from Environment Variables or Web.config
        string host = Environment.GetEnvironmentVariable("SMTP_HOST");
        if (string.IsNullOrEmpty(host)) host = ConfigurationManager.AppSettings["SmtpHost"];
        if (string.IsNullOrEmpty(host)) host = "smtp.gmail.com";

        string portStr = Environment.GetEnvironmentVariable("SMTP_PORT");
        if (string.IsNullOrEmpty(portStr)) portStr = ConfigurationManager.AppSettings["SmtpPort"];
        if (string.IsNullOrEmpty(portStr)) portStr = "587";

        string user = Environment.GetEnvironmentVariable("SMTP_USER");
        if (string.IsNullOrEmpty(user)) user = ConfigurationManager.AppSettings["SmtpUser"];
        if (user == null) user = string.Empty;

        string pass = Environment.GetEnvironmentVariable("SMTP_PASS");
        if (string.IsNullOrEmpty(pass)) pass = ConfigurationManager.AppSettings["SmtpPass"];
        if (pass == null) pass = string.Empty;

        string sslStr = Environment.GetEnvironmentVariable("SMTP_SSL");
        if (string.IsNullOrEmpty(sslStr)) sslStr = ConfigurationManager.AppSettings["SmtpEnableSsl"];
        if (string.IsNullOrEmpty(sslStr)) sslStr = "true";

        string fromEmail = Environment.GetEnvironmentVariable("SMTP_FROM_EMAIL");
        if (string.IsNullOrEmpty(fromEmail)) fromEmail = ConfigurationManager.AppSettings["SmtpFromEmail"];
        if (string.IsNullOrEmpty(fromEmail)) fromEmail = "ayumakwana093@gmail.com";

        string fromName = ConfigurationManager.AppSettings["SmtpFromName"];
        if (string.IsNullOrEmpty(fromName)) fromName = "Ishika Organ Donation Foundation";

        int port = 587;
        int.TryParse(portStr, out port);

        bool enableSsl = true;
        bool.TryParse(sslStr, out enableSsl);

        string subject = "Reset Your Password - Ishika Organ Donation Foundation";

        string htmlBody = @"<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background-color: #f1f5f9; margin: 0; padding: 20px; color: #1e293b; }
        .email-container {{ max-width: 600px; margin: 0 auto; background: #ffffff; border-radius: 12px; overflow: hidden; box-shadow: 0 4px 15px rgba(0,0,0,0.08); border: 1px solid #e2e8f0; }}
        .email-header {{ background: linear-gradient(135deg, #0284c7 0%, #0369a1 100%); padding: 30px; text-align: center; color: #ffffff; }}
        .email-header h1 {{ margin: 0; font-size: 22px; font-weight: 700; letter-spacing: 0.5px; }}
        .email-body {{ padding: 30px; line-height: 1.6; font-size: 15px; }}
        .btn-wrapper {{ text-align: center; margin: 30px 0; }}
        .btn {{ display: inline-block; background: #0284c7; color: #ffffff !important; padding: 14px 32px; border-radius: 50px; text-decoration: none; font-weight: bold; font-size: 16px; box-shadow: 0 4px 12px rgba(2, 132, 199, 0.35); }}
        .link-text {{ font-size: 13px; color: #64748b; word-break: break-all; margin-top: 20px; }}
        .email-footer {{ background: #f8fafc; padding: 20px 30px; border-top: 1px solid #e2e8f0; font-size: 12px; color: #94a3b8; text-align: center; }}
        .notice {{ background: #fef3c7; color: #92400e; padding: 12px 16px; border-radius: 8px; font-size: 13px; margin-top: 20px; }}
    </style>
</head>
<body>
    <div class='email-container'>
        <div class='email-header'>
            <h1>Ishika Organ Donation Foundation</h1>
        </div>
        <div class='email-body'>
            <p>Hello,</p>
            <p>We received a request to reset the password for your account associated with <strong>" + HttpUtility.HtmlEncode(recipientEmail) + @"</strong>.</p>
            <p>Click the button below to choose a new password:</p>
            <div class='btn-wrapper'>
                <a href='" + resetUrl + @"' class='btn' target='_blank'>Reset Password</a>
            </div>
            <div class='notice'>
                &#9203; This password reset link will expire in <strong>" + expiryMinutes.ToString() + @" minutes</strong> for your security.
            </div>
            <p class='link-text'>
                If the button above does not work, copy and paste this URL into your browser:<br/>
                <a href='" + resetUrl + @"'>" + resetUrl + @"</a>
            </p>
            <p style='color: #64748b; font-size: 13px; margin-top: 25px;'>
                If you did not request this password reset, no action is needed. Your account remains secure and your password will not change.
            </p>
        </div>
        <div class='email-footer'>
            &copy; " + DateTime.Now.Year.ToString() + @" Ishika Organ Donation Foundation &bull; Saving Lives Together
        </div>
    </div>
</body>
</html>";

        // Attempt live SMTP transmission if credentials are configured
        if (!string.IsNullOrEmpty(user) && !string.IsNullOrEmpty(pass))
        {
            try
            {
                using (MailMessage mail = new MailMessage())
                {
                    mail.From = new MailAddress(fromEmail, fromName);
                    mail.To.Add(recipientEmail);
                    mail.Subject = subject;
                    mail.Body = htmlBody;
                    mail.IsBodyHtml = true;

                    using (SmtpClient smtp = new SmtpClient(host, port))
                    {
                        smtp.Credentials = new NetworkCredential(user, pass);
                        smtp.EnableSsl = enableSsl;
                        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                        smtp.Send(mail);
                    }
                }
                statusMessage = "Email sent successfully via SMTP.";
                LogPasswordReset(recipientEmail, resetUrl, expiryMinutes, "SENT VIA GMAIL SMTP");
                return true;
            }
            catch (Exception ex)
            {
                statusMessage = "SMTP Error: " + ex.Message;
                LogPasswordReset(recipientEmail, resetUrl, expiryMinutes, "SMTP FAILED: " + ex.Message);
                return true;
            }
        }
        else
        {
            statusMessage = "SMTP credentials empty in Web.config.";
            LogPasswordReset(recipientEmail, resetUrl, expiryMinutes, "NO SMTP CREDENTIALS (SAVED TO LOG)");
            return true;
        }
    }

    private static void LogPasswordReset(string email, string resetUrl, int expiryMinutes, string status)
    {
        try
        {
            string appDataPath = HttpContext.Current != null 
                ? HttpContext.Current.Server.MapPath("~/App_Data") 
                : Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "App_Data");

            if (!Directory.Exists(appDataPath))
            {
                Directory.CreateDirectory(appDataPath);
            }

            string logFilePath = Path.Combine(appDataPath, "PasswordResetLog.txt");
            string logEntry = "[" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "] Password Reset Request for: " + email + Environment.NewLine +
                             "Status: " + status + Environment.NewLine +
                             "Reset URL: " + resetUrl + Environment.NewLine +
                             "Expires In: " + expiryMinutes + " minutes" + Environment.NewLine +
                             "--------------------------------------------------------------------------------" + Environment.NewLine;

            File.AppendAllText(logFilePath, logEntry);
        }
        catch
        {
            // Silently ignore logging failures
        }
    }
}
