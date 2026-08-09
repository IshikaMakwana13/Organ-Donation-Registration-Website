using System;
using System.Web;
using System.Configuration;

public partial class forget_password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btn_send_reset_Click(object sender, EventArgs e)
    {
        if (!Page.IsValid)
            return;

        string email = email_cp.Text.Trim();

        if (string.IsNullOrWhiteSpace(email))
            return;

        // Retrieve token expiry configured in Web.config (default 30 minutes)
        int expiryMinutes = 30;
        string configExpiry = ConfigurationManager.AppSettings["ResetTokenExpiryMinutes"];
        if (!string.IsNullOrEmpty(configExpiry))
        {
            int.TryParse(configExpiry, out expiryMinutes);
        }

        // Only generate token and send email if user exists in the database
        if (PasswordResetManager.UserExistsByEmail(email))
        {
            string token = PasswordResetManager.CreateResetToken(email, expiryMinutes);

            if (!string.IsNullOrEmpty(token))
            {
                string baseUrl = Request.Url.GetLeftPart(UriPartial.Authority);
                string resetUrl = baseUrl + "/ResetPassword.aspx?token=" + HttpUtility.UrlEncode(token) + "&email=" + HttpUtility.UrlEncode(email);

                string emailStatus;
                EmailService.SendPasswordResetEmail(email, resetUrl, expiryMinutes, out emailStatus);
            }
        }

        // SECURITY: Always show generic confirmation to prevent user enumeration
        pnl_form.Visible = false;
        lbl_message.Text = "<strong>Check your email:</strong> If an account exists with this email address, a password reset link has been sent. The link is valid for " + expiryMinutes.ToString() + " minutes. Please check your inbox and spam folders.";
        pnl_message.Visible = true;
    }
}
