using System;
using System.Web;

public partial class ResetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string email = Request.QueryString["email"];
            string token = Request.QueryString["token"];

            if (string.IsNullOrWhiteSpace(email) || string.IsNullOrWhiteSpace(token))
            {
                ShowError("Invalid or missing password reset link parameters.");
                return;
            }

            string validationError;
            if (!PasswordResetManager.ValidateToken(email, token, out validationError))
            {
                ShowError(validationError);
                return;
            }

            // Valid token - store in hidden fields and show the password input form
            hf_email.Value = email;
            hf_token.Value = token;
            pnl_form.Visible = true;
            pnl_error.Visible = false;
            pnl_success.Visible = false;
            lbl_account_email.Text = "Resetting password for: " + HttpUtility.HtmlEncode(email);
        }
    }

    protected void btn_reset_password_Click(object sender, EventArgs e)
    {
        if (!Page.IsValid)
            return;

        string email = !string.IsNullOrEmpty(hf_email.Value) ? hf_email.Value : Request.QueryString["email"];
        string token = !string.IsNullOrEmpty(hf_token.Value) ? hf_token.Value : Request.QueryString["token"];
        string newPassword = txt_confirm_password.Text.Trim();

        if (string.IsNullOrWhiteSpace(email) || string.IsNullOrWhiteSpace(token))
        {
            ShowError("Invalid request. Missing reset parameters.");
            return;
        }

        string resetError;
        bool isSuccess = PasswordResetManager.ResetPassword(email, token, newPassword, out resetError);

        if (isSuccess)
        {
            pnl_form.Visible = false;
            pnl_error.Visible = false;
            pnl_success.Visible = true;
        }
        else
        {
            ShowError(resetError);
        }
    }

    private void ShowError(string message)
    {
        pnl_form.Visible = false;
        pnl_success.Visible = false;
        pnl_error.Visible = true;
        lbl_error.Text = "<strong>Unable to Reset Password:</strong> " + HttpUtility.HtmlEncode(message);
    }
}
