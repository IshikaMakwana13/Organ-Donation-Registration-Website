<%@ Page Title="" Language="C#" MasterPageFile="MasterPage_Admin.master"
AutoEventWireup="true" CodeFile="M_Admin_Dashboard.aspx.cs"
Inherits="Admin_Dashboard" %>

<asp:Content
  ID="Content2"
  ContentPlaceHolderID="ContentPlaceHolder1"
  Runat="Server"
>
  <br />

  <div id="mainhit">
    <div class="hit_counter">
      <br /><br />
      <asp:Label
        runat="server"
        style="
          margin-left: 8%;
          margin-top: 20%;
          font-size: x-large;
          color: #4d2929;
        "
        >TOTAL WEBSITE VISITERS :
      </asp:Label>
      <br /><br />

      <asp:Label
        runat="server"
        ID="counter_lbl"
        style="
          font-family: Britannic;
          color: #0f115f;
          border: dotted;
          margin-left: 23%;
          font-size: 150px;
        "
        >18
      </asp:Label>
    </div>
  </div>

  <br />
  <hr />
  <br />

  <div id="totalsignup">
    <div class="ttl_signup">
      <br /><br />
      <asp:Label
        ID="Label1"
        runat="server"
        style="
          margin-left: 23%;
          margin-top: 20%;
          font-size: x-large;
          color: #4d2929;
          margin-top: 10px;
        "
        >TOTAL SIGN-UPs :
      </asp:Label>
      <br /><br />
      <asp:Label
        runat="server"
        ID="ttl_signup"
        style="
          font-family: Britannic;
          color: #0f115f;
          border: dotted;
          margin-left: 25%;
          font-size: 150px;
        "
        >00</asp:Label
      >
    </div>
  </div>

  <br />
  <hr />
  <br />

  <div id="totalmsg">
    <div class="ttl_msg">
      <br /><br />
      <asp:Label
        ID="Label2"
        runat="server"
        style="
          margin-left: 23%;
          margin-top: 20%;
          font-size: x-large;
          color: #4d2929;
        "
        >TOTAL MESSAGE :
      </asp:Label>
      <br /><br />
      <asp:Label
        runat="server"
        ID="ttlmsg"
        style="
          font-family: Britannic;
          color: #0f115f;
          border: dotted;
          margin-left: 25%;
          font-size: 150px;
        "
        >00</asp:Label
      >
    </div>
  </div>

  <br />
  <hr />
  <br />

  <div id="ttldonor">
    <div class="ttl_donor">
      <br /><br />
      <asp:Label
        ID="Label3"
        runat="server"
        style="
          margin-left: 23%;
          margin-top: 20%;
          font-size: x-large;
          color: #4d2929;
        "
        >TOTAL DONOR :
      </asp:Label>
      <br /><br />
      <asp:Label
        runat="server"
        ID="totaldonor"
        style="
          font-family: Britannic;
          color: #0f115f;
          border: dotted;
          margin-left: 25%;
          font-size: 150px;
        "
        >00</asp:Label
      >
    </div>
  </div>

  <br />
  <hr />
  <br />

  <div id="ttlpatient">
    <div class="ttl_patient">
      <br /><br />
      <asp:Label
        ID="Label4"
        runat="server"
        style="
          margin-left: 23%;
          margin-top: 20%;
          font-size: x-large;
          color: #4d2929;
        "
        >TOTAL PATIENTS :
      </asp:Label>
      <br /><br />
      <asp:Label
        runat="server"
        ID="totalpatient"
        style="
          font-family: Britannic;
          color: #0f115f;
          border: dotted;
          margin-left: 25%;
          font-size: 150px;
        "
        >00</asp:Label
      >
    </div>
  </div>
  <br />
  <hr />
  <br />
  <p id="last">©2020 ISHIKA CHARITY | All Rights Reserved</p>
  <br /><br />
  <hr />
</asp:Content>
