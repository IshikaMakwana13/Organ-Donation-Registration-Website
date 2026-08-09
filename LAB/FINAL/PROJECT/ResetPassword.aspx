<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResetPassword.aspx.cs" Inherits="ResetPassword" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0" />
    <title>Set New Password | Ishika Organ Donation</title>

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@400;600;700;800&family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet" />

    <style>
        *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #0f172a 0%, #1e293b 50%, #0369a1 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
            color: #ffffff;
        }
        .rp_container {
            width: 100%;
            max-width: 480px;
            background: rgba(255, 255, 255, 0.06);
            backdrop-filter: blur(16px);
            border: 1px solid rgba(255, 255, 255, 0.15);
            border-radius: 20px;
            padding: 40px 30px;
            box-shadow: 0 20px 50px rgba(0, 0, 0, 0.4);
        }
        .back_link {
            color: #38bdf8;
            text-decoration: none;
            font-weight: 600;
            font-size: 0.9rem;
            display: inline-block;
            margin-bottom: 20px;
            transition: all 0.25s;
        }
        .back_link:hover {
            color: #ffffff;
            transform: translateX(-4px);
        }
        .rp_header {
            text-align: center;
            margin-bottom: 25px;
        }
        .rp_icon {
            font-size: 3rem;
            margin-bottom: 10px;
            display: block;
        }
        .rp_header h1 {
            font-family: 'Outfit', sans-serif;
            font-size: 1.8rem;
            font-weight: 800;
            color: #ffffff;
            margin-bottom: 6px;
        }
        .rp_header p {
            color: #94a3b8;
            font-size: 0.92rem;
        }
        .user_badge {
            display: inline-block;
            background: rgba(56, 189, 248, 0.15);
            color: #38bdf8;
            padding: 4px 14px;
            border-radius: 9999px;
            font-size: 0.85rem;
            font-weight: 600;
            margin-bottom: 15px;
            border: 1px solid rgba(56, 189, 248, 0.3);
        }
        .rp_form_group {
            margin-bottom: 20px;
        }
        .rp_form_group label {
            display: block;
            font-size: 0.88rem;
            font-weight: 600;
            color: #cbd5e1;
            margin-bottom: 6px;
        }
        .rp_input {
            width: 100%;
            padding: 13px 16px;
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.2);
            background: rgba(255, 255, 255, 0.08);
            color: #ffffff;
            font-size: 0.95rem;
            font-family: inherit;
            outline: none;
            transition: all 0.25s;
        }
        .rp_input:focus {
            border-color: #38bdf8;
            background: rgba(255, 255, 255, 0.12);
            box-shadow: 0 0 0 3px rgba(56, 189, 248, 0.25);
        }
        .val_error {
            color: #f87171;
            font-size: 0.8rem;
            margin-top: 4px;
            display: block;
        }
        .rp_submit_btn {
            width: 100%;
            padding: 15px;
            border-radius: 9999px;
            background: linear-gradient(135deg, #38bdf8 0%, #0284c7 100%);
            color: #ffffff;
            border: none;
            font-weight: 800;
            font-size: 1rem;
            cursor: pointer;
            box-shadow: 0 8px 25px rgba(2, 132, 199, 0.4);
            margin-top: 10px;
            transition: all 0.3s;
            letter-spacing: 0.5px;
        }
        .rp_submit_btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 30px rgba(2, 132, 199, 0.6);
        }
        .alert_box {
            padding: 16px 20px;
            border-radius: 12px;
            font-size: 0.92rem;
            line-height: 1.6;
            margin-bottom: 24px;
            text-align: center;
        }
        .alert_error {
            background: rgba(239, 68, 68, 0.18);
            border: 1px solid #ef4444;
            color: #fca5a5;
        }
        .alert_success {
            background: rgba(34, 197, 94, 0.18);
            border: 1px solid #22c55e;
            color: #86efac;
        }
        .action_btn_link {
            display: inline-block;
            width: 100%;
            padding: 14px 20px;
            background: linear-gradient(135deg, #0284c7 0%, #0369a1 100%);
            color: #ffffff;
            border-radius: 9999px;
            text-decoration: none;
            font-weight: 700;
            font-size: 1rem;
            text-align: center;
            box-shadow: 0 8px 20px rgba(2, 132, 199, 0.35);
            transition: all 0.3s ease;
            margin-top: 15px;
        }
        .action_btn_link:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 25px rgba(2, 132, 199, 0.5);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:HiddenField ID="hf_email" runat="server" />
        <asp:HiddenField ID="hf_token" runat="server" />

        <div class="rp_container">
            <a href="1_SIGN_IN.aspx" class="back_link">&larr; Back to Sign In</a>
            
            <div class="rp_header">
                <span class="rp_icon">🔒</span>
                <h1>Set New Password</h1>
                <p>Choose a new, secure password for your account</p>
            </div>

            <!-- Error Banner -->
            <asp:Panel ID="pnl_error" runat="server" Visible="false" CssClass="alert_box alert_error">
                <asp:Label ID="lbl_error" runat="server"></asp:Label>
                <br />
                <a href="2_forget_password.aspx" class="action_btn_link">Request New Reset Link</a>
            </asp:Panel>

            <!-- Success Banner -->
            <asp:Panel ID="pnl_success" runat="server" Visible="false" CssClass="alert_box alert_success">
                <h3>🎉 Password Reset Successful!</h3>
                <p>Your account password has been updated securely. You can now sign in with your new credentials.</p>
                <a href="1_SIGN_IN.aspx" class="action_btn_link">Proceed to Sign In &rarr;</a>
            </asp:Panel>

            <!-- Reset Form -->
            <asp:Panel ID="pnl_form" runat="server">
                <div style="text-align: center;">
                    <asp:Label ID="lbl_account_email" runat="server" CssClass="user_badge"></asp:Label>
                </div>

                <div class="rp_form_group">
                    <label for="txt_new_password">New Password (min. 6 characters)</label>
                    <asp:TextBox runat="server" ID="txt_new_password" TextMode="Password" CssClass="rp_input" placeholder="Enter new password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rf_new_pass" runat="server" ErrorMessage="New password is required" ControlToValidate="txt_new_password" Display="Dynamic" ValidationGroup="rp" CssClass="val_error"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="rx_pass_len" runat="server" ErrorMessage="Password must be at least 6 characters" ControlToValidate="txt_new_password" ValidationExpression="^.{6,}$" Display="Dynamic" ValidationGroup="rp" CssClass="val_error"></asp:RegularExpressionValidator>
                </div>

                <div class="rp_form_group">
                    <label for="txt_confirm_password">Confirm New Password</label>
                    <asp:TextBox runat="server" ID="txt_confirm_password" TextMode="Password" CssClass="rp_input" placeholder="Re-enter new password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rf_confirm_pass" runat="server" ErrorMessage="Confirm password is required" ControlToValidate="txt_confirm_password" Display="Dynamic" ValidationGroup="rp" CssClass="val_error"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cv_pass_match" runat="server" ErrorMessage="Passwords do not match" ControlToCompare="txt_new_password" ControlToValidate="txt_confirm_password" Display="Dynamic" ValidationGroup="rp" CssClass="val_error"></asp:CompareValidator>
                </div>

                <asp:Button runat="server" ID="btn_reset_password" Text="RESET PASSWORD" OnClick="btn_reset_password_Click" ValidationGroup="rp" CssClass="rp_submit_btn" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
