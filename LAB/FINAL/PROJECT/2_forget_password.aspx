<%@ Page Language="C#" AutoEventWireup="true" CodeFile="2_forget_password.aspx.cs" Inherits="forget_password" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0" />
    <title>Forgot Password | Ishika Organ Donation</title>

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
        .fp_container {
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
        .fp_header {
            text-align: center;
            margin-bottom: 30px;
        }
        .fp_icon {
            font-size: 3rem;
            margin-bottom: 10px;
            display: block;
        }
        .fp_header h1 {
            font-family: 'Outfit', sans-serif;
            font-size: 1.8rem;
            font-weight: 800;
            color: #ffffff;
            margin-bottom: 8px;
        }
        .fp_header p {
            color: #94a3b8;
            font-size: 0.92rem;
            line-height: 1.5;
        }
        .fp_form_group {
            margin-bottom: 22px;
        }
        .fp_form_group label {
            display: block;
            font-size: 0.88rem;
            font-weight: 600;
            color: #cbd5e1;
            margin-bottom: 8px;
        }
        .fp_input {
            width: 100%;
            padding: 14px 16px;
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.2);
            background: rgba(255, 255, 255, 0.08);
            color: #ffffff;
            font-size: 0.95rem;
            font-family: inherit;
            outline: none;
            transition: all 0.25s;
        }
        .fp_input:focus {
            border-color: #38bdf8;
            background: rgba(255, 255, 255, 0.12);
            box-shadow: 0 0 0 3px rgba(56, 189, 248, 0.25);
        }
        .val_error {
            color: #f87171;
            font-size: 0.82rem;
            margin-top: 5px;
            display: block;
        }
        .fp_submit_btn {
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
        .fp_submit_btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 30px rgba(2, 132, 199, 0.6);
        }
        .alert_box {
            background: rgba(56, 189, 248, 0.15);
            border: 1px solid #38bdf8;
            color: #e0f2fe;
            padding: 16px 20px;
            border-radius: 12px;
            font-size: 0.92rem;
            line-height: 1.6;
            margin-bottom: 24px;
            text-align: center;
        }
        .alert_box strong {
            color: #ffffff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="fp_container">
            <a href="1_SIGN_IN.aspx" class="back_link">&larr; Back to Sign In</a>
            
            <div class="fp_header">
                <span class="fp_icon">📧</span>
                <h1>Forgot Password?</h1>
                <p>Enter your registered email address and we'll send you a secure link to reset your password.</p>
            </div>

            <asp:Panel ID="pnl_message" runat="server" Visible="false" CssClass="alert_box">
                <asp:Label ID="lbl_message" runat="server"></asp:Label>
            </asp:Panel>

            <asp:Panel ID="pnl_form" runat="server">
                <div class="fp_form_group">
                    <label for="email_cp">Registered Email Address</label>
                    <asp:TextBox runat="server" ID="email_cp" TextMode="Email" CssClass="fp_input" placeholder="name@example.com"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rf_email_cp" runat="server" ErrorMessage="Email address is required" ControlToValidate="email_cp" Display="Dynamic" ValidationGroup="fp" CssClass="val_error"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="re_email_cp" runat="server" ErrorMessage="Please enter a valid email address" ControlToValidate="email_cp" Display="Dynamic" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="fp" CssClass="val_error"></asp:RegularExpressionValidator>
                </div>

                <asp:Button runat="server" ID="btn_send_reset" Text="SEND RESET LINK" OnClick="btn_send_reset_Click" ValidationGroup="fp" CssClass="fp_submit_btn" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
