<%@ Page Language="C#" AutoEventWireup="true" CodeFile="m_loader.aspx.cs"
Inherits="z_loader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title></title>

    <style>
      /*FOR H1 */
      .animate-charcter {
        text-transform: uppercase;
        background-image: linear-gradient(
          -225deg,
          #231557 0%,
          #44107a 29%,
          #ff1361 67%,
          #fff800 100%
        );
        background-size: auto auto;
        background-clip: border-box;
        background-size: 200% auto;
        color: #fff;
        background-clip: text;
        text-fill-color: transparent;
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        animation: textclip 2s linear infinite;
        display: inline-block;
        font-size: 60px;
      }

      @keyframes textclip {
        to {
          background-position: 200% center;
        }
      }

      /*FOR NUMBER*/
      @import url("https://fonts.googleapis.com/css2?family=Alfa+Slab+One&display=swap");

      #counter {
        position: relative;
        -webkit-box-reflect: below -20px
          linear-gradient(transparent, rgba(0, 0, 0, 0.2));
        font-size: 60px;
        margin-left: 48%;
      }
      #counter span {
        font-family: "Alfa Slab One", cursive;
        position: relative;
        display: inline-block;
        color: #fff;
        text-transform: uppercase;
        animation: waviy 1s infinite;
        animation-delay: calc(0.1s * var(--i));
      }
      @keyframes counter {
        0%,
        40%,
        100% {
          transform: translateY(0);
        }
        20% {
          transform: translateY(-20px);
        }
      }
    </style>
  </head>
  <body>
    <form id="form1" runat="server">
      <div>
        <a
          href="m_Admin_Dashboard.aspx"
          style="margin-left: 0%; font-weight: 500; font-size: large"
        >
          &empty;SKIP</a
        ><br />
        <br /><br /><br /><br />

        <hr />
        <!--FOR H1-->
        <div>
          <div class="container">
            <div class="row">
              <div class="col-md-12 text-center">
                <center>
                  <h3 class="animate-charcter">
                    YOU WILL REDIRECT TO ADMIN PAGE IN :
                  </h3>
                </center>
              </div>
            </div>
          </div>
        </div>

        <center>
          <h1></h1>
          <asp:Image
            runat="server"
            ImageUrl="Pictures/786.gif"
            Height="100px"
          />
        </center>
        <div id="counter">10</div>
        <script>
          setInterval(function () {
            var div = document.querySelector("#counter");
            var count = div.textContent * 1 - 1;
            div.textContent = count;
            if (count == 1) {
              window.location.replace("m_Admin_Dashboard.aspx");
            }
          }, 1000);
        </script>

        <br />
        <br /><br />
        <hr />
      </div>
    </form>
  </body>
</html>
