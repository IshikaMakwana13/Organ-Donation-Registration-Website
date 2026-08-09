<%@ Page Language="C#" AutoEventWireup="true" CodeFile="0_START_PAGE.aspx.cs" Inherits="z_popup" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml" lang="en">

    <head runat="server">
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0" />
        <title>Welcome | Ishika Organ Donation</title>

        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />
        <link
            href="https://fonts.googleapis.com/css2?family=Outfit:wght@400;600;700;800&family=Poppins:wght@400;500;600;700&display=swap"
            rel="stylesheet" />

        <style>
            *,
            *::before,
            *::after {
                box-sizing: border-box;
                margin: 0;
                padding: 0;
            }

            body {
                font-family: 'Poppins', sans-serif;
                background: linear-gradient(135deg, #0284c7 0%, #0369a1 50%, #0f172a 100%);
                min-height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
                padding: 20px;
            }

            .loader_center {
                text-align: center;
            }

            .loader_center img {
                width: 140px;
                height: auto;
                border-radius: 9999px;
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
                margin-bottom: 20px;
            }

            .popup {
                background: #ffffff;
                border-radius: 20px;
                width: 100%;
                max-width: 460px;
                padding: 35px 30px;
                position: fixed;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                box-shadow: 0 20px 50px rgba(0, 0, 0, 0.4);
                display: none;
                text-align: center;
                border: 1px solid #e2e8f0;
                z-index: 1000;
            }

            .popup_close_btn {
                position: absolute;
                top: 15px;
                right: 15px;
                background: #f1f5f9;
                color: #64748b;
                border-radius: 9999px;
                width: 34px;
                height: 34px;
                border: none;
                font-size: 1.2rem;
                cursor: pointer;
                display: flex;
                align-items: center;
                justify-content: center;
                transition: all 0.25s;
            }

            .popup_close_btn:hover {
                background: #ef4444;
                color: #ffffff;
            }

            .popup_icon {
                font-size: 3rem;
                margin-bottom: 12px;
                display: inline-block;
            }

            .popup h2 {
                font-family: 'Outfit', sans-serif;
                font-size: 1.5rem;
                font-weight: 800;
                color: #0369a1;
                margin-bottom: 10px;
            }

            .popup p {
                font-size: 0.95rem;
                color: #475569;
                line-height: 1.6;
                margin-bottom: 25px;
            }

            .signin_btn_link {
                display: inline-block;
                width: 100%;
                padding: 14px 20px;
                background: linear-gradient(135deg, #0284c7 0%, #0369a1 100%);
                color: #ffffff;
                border-radius: 9999px;
                text-decoration: none;
                font-weight: 700;
                font-size: 1rem;
                letter-spacing: 0.5px;
                box-shadow: 0 8px 20px rgba(2, 132, 199, 0.35);
                transition: all 0.3s ease;
            }

            .signin_btn_link:hover {
                transform: translateY(-2px);
                box-shadow: 0 12px 25px rgba(2, 132, 199, 0.5);
            }
        </style>
    </head>

    <body>
        <form id="form1" runat="server">
            <div class="loader_center">
                <img src="Pictures/Loader/loading.gif" alt="Loading" />
                <h3 style="color: #ffffff; font-weight: 600;">Ishika Organ Donation Foundation</h3>
            </div>

            <div class="popup">
                <button type="button" class="popup_close_btn" id="close" aria-label="Close">&times;</button>

                <h2>ORGAN DONATION PORTAL</h2>
                <p>Please <strong>Sign In</strong> or create an account to access donor pledges, waiting patient
                    registries, and medical coordination services.</p>
                <a href="1_SIGN_IN.aspx" class="signin_btn_link">PROCEED TO SIGN IN &rarr;</a>
            </div>
        </form>

        <script type="text/javascript">
            window.addEventListener("load", function () {
                setTimeout(function () {
                    var p = document.querySelector(".popup");
                    if (p) p.style.display = "block";
                }, 1000);
            });
            document.querySelector("#close").addEventListener("click", function () {
                var p = document.querySelector(".popup");
                if (p) p.style.display = "none";
            });
        </script>
    </body>

    </html>