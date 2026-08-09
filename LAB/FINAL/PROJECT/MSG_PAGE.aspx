<%@ Page Title="Leave Message | Ishika Organ Donation" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="MSG_PAGE.aspx.cs" Inherits="MSG_PAGE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="holder1" Runat="Server">
    <div class="apply_container" style="max-width: 700px; margin: 30px auto;">
        
        <div class="form_header_card">
            <span class="portal_badge">CONTACT & FEEDBACK</span>
            <h1>Leave Us A Message</h1>
            <p>Have questions about organ donation, pledging, or patient matching? Reach out directly to our team.</p>
        </div>

        <div class="form_section_card">
            <div class="form_row_grid single_col">
                <div class="input_field_wrap">
                    <label>Your Full Name</label>
                    <asp:TextBox runat="server" ID="usrname_msg" CssClass="form_input" placeholder="Enter your full name"></asp:TextBox>
                </div>

                <div class="input_field_wrap">
                    <label>Your Email Address</label>
                    <asp:TextBox runat="server" ID="usremail_msg" TextMode="Email" CssClass="form_input" placeholder="example@email.com"></asp:TextBox>
                </div>

                <div class="input_field_wrap">
                    <label>Your Message / Inquiry</label>
                    <asp:TextBox runat="server" ID="usrmsg" TextMode="MultiLine" Rows="5" CssClass="form_textarea" placeholder="Type your message here..."></asp:TextBox>
                </div>
            </div>

            <div class="form_row_grid two_col" style="margin-top: 20px;">
                <asp:Button runat="server" ID="msgbtn" Text="SUBMIT MESSAGE" CssClass="btn_primary_submit" OnClick="msgbtn_Click" />
                <asp:Button runat="server" ID="cancelbtn" Text="BACK TO HOME" CssClass="btn_primary_submit" style="background: #64748b;" OnClick="cancelbtn_Click" CausesValidation="false" />
            </div>
        </div>

    </div>
</asp:Content>
