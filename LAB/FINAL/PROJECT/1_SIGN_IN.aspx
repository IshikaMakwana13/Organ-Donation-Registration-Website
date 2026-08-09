<%@ Page Language="C#" AutoEventWireup="true" CodeFile="1_SIGN_IN.aspx.cs" Inherits="_11_SIGN_IN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
  <head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0" />
    <title>Sign In & Sign Up | Ishika Organ Donation</title>

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap" rel="stylesheet" />

    <style>
      :root {
        --primary-color: #f5dd20;
        --secondary-color: #0744c3;
        --black: #000000;
        --white: #ffffff;
        --gray: #efefef;
        --gray-2: #757575;

        --facebook-color: #4267b2;
        --google-color: #db4437;
        --twitter-color: #1da1f2;
        --insta-color: #e1306c;
      }

      * {
        font-family: "Poppins", sans-serif;
        padding: 0;
        box-sizing: border-box;
        margin: 0;
      }

      html,
      body {
        min-height: 100vh;
        overflow-x: hidden;
        width: 100%;
        background-color: #f0f4f8;
      }

      .container {
        position: relative;
        min-height: 100vh;
        overflow: hidden;
        width: 100%;
      }

      .row {
        display: flex;
        flex-wrap: wrap;
        min-height: 100vh;
        width: 100%;
      }

      .col {
        width: 50%;
      }

      .align-items-center {
        display: flex;
        align-items: center;
        justify-content: center;
        text-align: center;
      }

      .form-wrapper {
        width: 100%;
        max-width: 28rem;
      }

      .form {
        padding: 1.5rem;
        background-color: var(--white);
        border-radius: 1.5rem;
        width: 100%;
        box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
        transform: scale(0);
        transition: 0.5s ease-in-out;
        transition-delay: 1s;
      }

      .input-group {
        position: relative;
        width: 100%;
        max-width: 320px;
        margin: 0.5rem auto;
        text-align: center;
      }

      .input-group input {
        width: 100% !important;
        max-width: 320px !important;
        box-sizing: border-box !important;
        padding: 10px 14px !important;
        font-size: 15px !important;
        border-radius: 6px !important;
        border: 1px solid #ccc !important;
        outline: none !important;
        background-color: var(--gray);
        height: 42px !important;
        display: block !important;
        margin: 0 auto !important;
      }

      .input-group input:focus {
        border: 1.5px solid var(--secondary-color) !important;
        background-color: #ffffff;
      }

      .sign_up_btn {
        border: none;
        outline: none;
        align-items: center;
        background: linear-gradient(144deg, #af40ff, #5b42f3 50%, #00ddeb);
        border-radius: 8px;
        box-shadow: rgba(151, 65, 252, 0.2) 0 15px 30px -5px;
        box-sizing: border-box;
        color: #ffffff;
        display: flex;
        justify-content: center;
        font-size: 18px;
        font-weight: 600;
        padding: 12px;
        cursor: pointer;
        width: 100% !important;
        max-width: 320px !important;
        margin: 15px auto !important;
        transition: all 0.3s ease;
      }

      .sign_up_btn:hover {
        opacity: 0.95;
        transform: translateY(-2px);
      }

      #btn_sigin {
        background-color: #fbeee0;
        border: 2px solid #422800;
        border-radius: 30px;
        box-shadow: #422800 4px 4px 0 0;
        color: #422800;
        cursor: pointer;
        display: block;
        font-weight: 600;
        font-size: 18px;
        padding: 0 18px;
        line-height: 44px;
        height: 48px;
        text-align: center;
        text-decoration: none;
        width: 100% !important;
        max-width: 320px !important;
        box-sizing: border-box !important;
        margin: 15px auto !important;
        transition: all 0.2s ease;
      }

      #btn_sigin:hover {
        background-color: #f5e1cb;
        transform: translateY(-2px);
      }

      #btn_sigin:active {
        box-shadow: #422800 2px 2px 0 0;
        transform: translate(2px, 2px);
      }

      .form p {
        margin: 0.8rem 0;
        font-size: 0.85rem;
      }

      .flex-col {
        flex-direction: column;
      }

      .pointer {
        cursor: pointer;
        color: var(--secondary-color);
      }

      .container.sign-in .form.sign-in,
      .container.sign-up .form.sign-up {
        transform: scale(1);
      }

      .content-row {
        position: absolute;
        top: 0;
        left: 0;
        pointer-events: none;
        z-index: 6;
        width: 100%;
      }

      .text {
        margin: 4rem;
        color: var(--white);
      }

      .text h2 {
        font-size: 3.5rem;
        font-weight: 800;
        margin: 2rem 0;
        transition: 1s ease-in-out;
      }

      .text p {
        font-weight: 600;
        transition: 1s ease-in-out;
        transition-delay: 0.2s;
      }

      .text.sign-in h2,
      .text.sign-in p {
        transform: translateX(-250%);
      }

      .text.sign-up h2,
      .text.sign-up p {
        transform: translateX(250%);
      }

      .container.sign-in .text.sign-in h2,
      .container.sign-in .text.sign-in p,
      .container.sign-up .text.sign-up h2,
      .container.sign-up .text.sign-up p {
        transform: translateX(0);
      }

      /* BACKGROUND */
      .container::before {
        content: "";
        position: absolute;
        top: 0;
        right: 0;
        height: 100vh;
        width: 300vw;
        transform: translate(35%, 0);
        background-image: linear-gradient(
          -45deg,
          var(--primary-color) 0%,
          var(--secondary-color) 100%
        );
        transition: 1s ease-in-out;
        z-index: 6;
        box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
        border-bottom-right-radius: max(50vw, 50vh);
        border-top-left-radius: max(50vw, 50vh);
      }

      .container.sign-in::before {
        transform: translate(0, 0);
        right: 50%;
      }

      .container.sign-up::before {
        transform: translate(100%, 0);
        right: 50%;
      }

      /* RESPONSIVE FOR MOBILE PHONES & TABLETS */
      @media only screen and (max-width: 768px) {
        .container::before,
        .container.sign-in::before,
        .container.sign-up::before {
          height: 100vh;
          border-bottom-right-radius: 0;
          border-top-left-radius: 0;
          z-index: 0;
          transform: none;
          right: 0;
          width: 100%;
        }

        .container.sign-in .col.sign-in,
        .container.sign-up .col.sign-up {
          transform: translateY(0);
        }

        .content-row {
          align-items: flex-start !important;
        }

        .content-row .col {
          transform: translateY(0);
          background-color: unset;
        }

        .col {
          width: 100%;
          position: absolute;
          padding: 1.5rem 1rem;
          background-color: var(--white);
          border-top-left-radius: 2rem;
          border-top-right-radius: 2rem;
          transform: translateY(100%);
          transition: 1s ease-in-out;
        }

        .row {
          align-items: flex-end;
          justify-content: flex-end;
        }

        .form {
          box-shadow: none;
          margin: 0 auto;
          padding: 10px 0;
          width: 100%;
          max-width: 320px;
        }

        .text {
          margin: 0;
        }

        .text p {
          display: none;
        }

        .text h2 {
          margin: 1.5rem 0.5rem 0.5rem 0.5rem;
          font-size: 2rem;
        }

        .input-group input {
          max-width: 100% !important;
          width: 100% !important;
        }

        #btn_sigin, .sign_up_btn {
          max-width: 100% !important;
          width: 100% !important;
        }
      }
    </style>
  </head>
  <body>
    <form id="form1" runat="server">
      <div>
        <div id="container" class="container">
          <!-- FORM SECTION -->
          <div class="row">
            <!-- SIGN UP -->
            <div class="col align-items-center flex-col sign-up">
              <div class="form-wrapper align-items-center">
                <div class="form sign-up">
                  
                  <div class="input-group">
                    <asp:RequiredFieldValidator
                      ID="usrnm_vd"
                      runat="server"
                      ErrorMessage="MUST ENTER USER NAME"
                      ControlToValidate="username"
                      Display="Dynamic"
                      ValidationGroup="su"
                      Height="1px"
                      Font-Size="1px"
                      ForeColor="White"
                      Width="1px"
                    ></asp:RequiredFieldValidator>
                    <asp:TextBox
                      ID="username"
                      runat="server"
                      TextMode="SingleLine"
                      placeholder="Username"
                      ValidationGroup="su"
                      style="text-transform: capitalize"
                    ></asp:TextBox>
                  </div>

                  <div class="input-group">
                    <asp:RequiredFieldValidator
                      ID="email_vd_mst"
                      runat="server"
                      ErrorMessage="MUST ENTER EMAIL"
                      ControlToValidate="email"
                      Display="Dynamic"
                      ValidationGroup="su"
                      Height="1px"
                      Width="1px"
                      Font-Size="1px"
                      ForeColor="White"
                    ></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator
                      ID="email_vd"
                      runat="server"
                      ErrorMessage="ENTER A VALID EMAIL "
                      ControlToValidate="email"
                      Display="Dynamic"
                      ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                      ValidationGroup="su"
                      Height="1px"
                      Font-Size="0pt"
                      ForeColor="White"
                      Width="1px"
                    ></asp:RegularExpressionValidator>
                    <asp:TextBox
                      ID="email"
                      runat="server"
                      TextMode="Email"
                      placeholder="Email"
                      ValidationGroup="su"
                    ></asp:TextBox>
                  </div>

                  <div class="input-group">
                    <asp:RequiredFieldValidator
                      ID="psswrd_vd"
                      runat="server"
                      ErrorMessage="MUST ENTER PASSWORD "
                      ControlToValidate="password"
                      Display="Dynamic"
                      ValidationGroup="su"
                      Height="1px"
                      Font-Size="1px"
                      ForeColor="White"
                      Width="1px"
                    ></asp:RequiredFieldValidator>
                    <asp:TextBox
                      ID="password"
                      runat="server"
                      TextMode="Password"
                      placeholder="Password"
                      ValidationGroup="su"
                    ></asp:TextBox>
                  </div>

                  <div class="input-group">
                    <asp:RequiredFieldValidator
                      ID="conpsswrd_vd"
                      runat="server"
                      ErrorMessage="MUST ENTER CONFIRM PASSWORD "
                      ControlToValidate="confirmpassword"
                      Display="Dynamic"
                      ValidationGroup="su"
                      Height="1px"
                      Font-Size="1px"
                      ForeColor="White"
                      Width="1px"
                    ></asp:RequiredFieldValidator>
                    <asp:CompareValidator
                      ID="repsswrd_vu"
                      runat="server"
                      ErrorMessage="PASSWORD DOES'NT MATCH "
                      ControlToCompare="password"
                      ControlToValidate="confirmpassword"
                      ValidationGroup="su"
                      Height="1px"
                      Font-Size="1px"
                      ForeColor="White"
                      Width="1px"
                    ></asp:CompareValidator>
                    <asp:TextBox
                      ID="confirmpassword"
                      placeholder="Confirm password"
                      TextMode="Password"
                      runat="server"
                      ValidationGroup="su"
                    ></asp:TextBox>
                  </div>

                  <asp:Button
                    class="sign_up_btn"
                    runat="server"
                    Text="SIGN UP"
                    ValidationGroup="su"
                    OnClick="sign_up_btn_Click"
                  />

                  <p>
                    <span> Already have an account? </span>
                    <b onclick="toggle()" class="pointer"> Sign in here </b>
                  </p>
                </div>
              </div>

              <asp:ValidationSummary
                ID="signup_vd"
                runat="server"
                HeaderText="INCORRECT DETAILS !"
                ShowMessageBox="True"
                ValidationGroup="su"
                BackColor="White"
                Font-Size="0px"
                ForeColor="White"
                Height="1px"
                Width="100%"
              />
            </div>
            <!-- END SIGN UP -->

            <!-- SIGN IN -->
            <div class="col align-items-center flex-col sign-in">
              <div class="form-wrapper align-items-center">
                <div class="form sign-in">
                  
                  <div class="input-group">
                    <asp:RequiredFieldValidator
                      ID="name_req"
                      runat="server"
                      ErrorMessage="MUST ENTER NAME"
                      ControlToValidate="name_signin"
                      Display="Dynamic"
                      ValidationGroup="si"
                      Height="1px"
                      Font-Size="1px"
                      ForeColor="White"
                      Width="1px"
                    ></asp:RequiredFieldValidator>
                    <asp:TextBox
                      ID="name_signin"
                      runat="server"
                      placeholder="NAME"
                      TextMode="SingleLine"
                      style="text-transform: capitalize"
                    ></asp:TextBox>
                  </div>

                  <div class="input-group">
                    <asp:RequiredFieldValidator
                      ID="emal_signup"
                      runat="server"
                      ErrorMessage="MUST ENTER EMAIL ADDRESS"
                      ControlToValidate="email_usr"
                      Display="Dynamic"
                      ValidationGroup="si"
                      Height="1px"
                      Font-Size="1px"
                      ForeColor="White"
                      Width="1px"
                    ></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator
                      ID="email_signin_re"
                      runat="server"
                      ErrorMessage="ENTER A VALID EMAIL "
                      ControlToValidate="email_usr"
                      Display="Dynamic"
                      ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                      ValidationGroup="si"
                      Height="1px"
                      Font-Size="0pt"
                      ForeColor="White"
                      Width="1px"
                    ></asp:RegularExpressionValidator>
                    <asp:TextBox
                      ID="email_usr"
                      runat="server"
                      placeholder="EMAIL"
                      TextMode="SingleLine"
                    ></asp:TextBox>
                  </div>

                  <div class="input-group">
                    <asp:RequiredFieldValidator
                      ID="psswrd_signin"
                      runat="server"
                      ErrorMessage="MUST ENTER PASSWORD "
                      ControlToValidate="passwrd"
                      Display="Dynamic"
                      ValidationGroup="si"
                      Height="1px"
                      Font-Size="1px"
                      ForeColor="White"
                      Width="1px"
                    ></asp:RequiredFieldValidator>
                    <asp:TextBox
                      ID="passwrd"
                      runat="server"
                      placeholder="PASSWORD"
                      TextMode="Password"
                    ></asp:TextBox>
                  </div>

                  <asp:Button
                    runat="server"
                    ID="btn_sigin"
                    Text="SIGN IN"
                    OnClick="btn_sigin_Click"
                    ValidationGroup="si"
                  />

                  <p>
                    <a href="2_forget_password.aspx" style="color: #64748b; text-decoration: none; font-weight: 500;"> Forgot password? </a>
                  </p>
                  <p>
                    <span> Don't have an account? </span>
                    <b onclick="toggle()" class="pointer"> Sign up here </b>
                  </p>
                </div>
              </div>
            </div>
            <!-- END SIGN IN -->

            <asp:ValidationSummary
              ID="vs_signin"
              runat="server"
              HeaderText="INCORRECT DETAILS !"
              ShowMessageBox="True"
              ValidationGroup="si"
              BackColor="White"
              Font-Size="0px"
              ForeColor="White"
              Height="1px"
              Width="100%"
            />
          </div>
          <!-- END FORM SECTION -->

          <!-- CONTENT SECTION -->
          <div class="row content-row">
            <!-- SIGN IN CONTENT -->
            <div class="col align-items-center flex-col">
              <div class="text sign-in">
                <h2 class="wel">Welcome</h2>
              </div>
              <div class="img sign-in"></div>
            </div>
            <!-- END SIGN IN CONTENT -->

            <!-- SIGN UP CONTENT -->
            <div class="col align-items-center flex-col">
              <div class="img sign-up"></div>
              <div class="text sign-up">
                <h2>Join with us</h2>
              </div>
            </div>
            <!-- END SIGN UP CONTENT -->
          </div>
          <!-- END CONTENT SECTION -->
        </div>
      </div>

      <script type="text/javascript">
        /*FOR SIGN IN & UP */
        let container = document.getElementById("container");

        function toggle() {
          container.classList.toggle("sign-in");
          container.classList.toggle("sign-up");
        }

        setTimeout(() => {
          container.classList.add("sign-in");
        }, 200);
      </script>
    </form>
  </body>
</html>
