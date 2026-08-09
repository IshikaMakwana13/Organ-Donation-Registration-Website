<%@ Page Title="Patients | Ishika Organ Donation" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="7_PATIENT.aspx.cs" Inherits="_4_PATIENT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="holder1" Runat="Server">
    <div class="registry_page_wrapper">
        
        <div class="registry_header">
            <span class="registry_badge patient_badge">PATIENT WAITING LIST</span>
            <h1>
                WELCOME <asp:Label runat="server" Text="User" ID="donate_user" CssClass="reg_user_name"></asp:Label>
            </h1>
            <p>Search waiting patient records by city, state, required organ, or demographic parameters</p>

            <div class="registry_cta_wrap">
                <a href="9_APPLY_AS_PATIENT.aspx" class="apply_portal_btn patient_portal_btn">
                    <span>&#127973; REGISTER AS WAITING PATIENT</span>
                    <span class="btn_arrow">&rarr;</span>
                </a>
            </div>
        </div>

        <!-- Search Card -->
        <div class="search_filter_card">
            <h3>&#128269; Search Patient Waiting Registry</h3>
            
            <div class="search_fields_grid">
                <div class="filter_group">
                    <label>City</label>
                    <asp:TextBox runat="server" ID="srh" CssClass="form_control" placeholder="Enter City"></asp:TextBox>
                    <asp:Button runat="server" Text="Search City" ID="search_btn" OnClick="search_btn_Click" CssClass="filter_btn" UseSubmitBehavior="false" CausesValidation="false" />
                </div>

                <div class="filter_group">
                    <label>State</label>
                    <asp:TextBox runat="server" ID="state" CssClass="form_control" placeholder="Enter State"></asp:TextBox>
                    <asp:Button runat="server" Text="Search State" ID="search_btn0" OnClick="search_btn_Click_state" CssClass="filter_btn" UseSubmitBehavior="false" CausesValidation="false" />
                </div>

                <div class="filter_group">
                    <label>Organ Needed</label>
                    <asp:TextBox runat="server" ID="organ" CssClass="form_control" placeholder="Enter Organ (e.g. Heart)"></asp:TextBox>
                    <asp:Button runat="server" Text="Search Organ" ID="search_btn1" OnClick="search_btn_Click_organ" CssClass="filter_btn" UseSubmitBehavior="false" CausesValidation="false" />
                </div>

                <div class="filter_group">
                    <label>Gender</label>
                    <asp:TextBox runat="server" ID="gneder" CssClass="form_control" placeholder="Enter Gender"></asp:TextBox>
                    <asp:Button runat="server" Text="Search Gender" ID="search_btn2" OnClick="search_btn_Click_gender" CssClass="filter_btn" UseSubmitBehavior="false" CausesValidation="false" />
                </div>
            </div>
        </div>

        <!-- Patient Grid Table -->
        <div class="gridview_responsive_container">
            <asp:GridView ID="dgv" runat="server" CssClass="custom_data_table" AutoGenerateColumns="true" GridLines="None">
                <HeaderStyle CssClass="table_header" />
                <RowStyle CssClass="table_row" />
                <AlternatingRowStyle CssClass="table_alt_row" />
                <EmptyDataTemplate>
                    <div class="empty_state">
                        <span>&#128203;</span>
                        <p>No waiting patient records found matching the current search parameters.</p>
                    </div>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>

    </div>
</asp:Content>
