<%@ Page Title="Donors | Ishika Organ Donation" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="6_DONOR.aspx.cs" Inherits="_4_DONOR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="holder1" Runat="Server">
    <div class="registry_page_wrapper">
        
        <div class="registry_header">
            <span class="registry_badge">DONOR REGISTRY</span>
            <h1>
                WELCOME <asp:Label runat="server" Text="User" ID="donate_user" CssClass="reg_user_name"></asp:Label>
            </h1>
            <p>Search and explore registered organ donors across cities, states, organs, and demographics</p>

            <div class="registry_cta_wrap">
                <a href="8_APPLY_AS_DONOR.aspx" class="apply_portal_btn donor_portal_btn">
                    <span>&#10084;&#65039; PLEDGE & APPLY AS DONOR</span>
                    <span class="btn_arrow">&rarr;</span>
                </a>
            </div>
        </div>

        <!-- Search Card -->
        <div class="search_filter_card">
            <h3>&#128269; Search Donor Database</h3>
            
            <div class="search_fields_grid">
                <div class="filter_group">
                    <label>City</label>
                    <asp:TextBox runat="server" ID="srh" CssClass="form_control" placeholder="Enter City (e.g. Surat)"></asp:TextBox>
                    <asp:Button runat="server" Text="Search City" ID="search_btn" OnClick="search_btn_Click" CssClass="filter_btn" UseSubmitBehavior="false" CausesValidation="false" />
                </div>

                <div class="filter_group">
                    <label>State</label>
                    <asp:TextBox runat="server" ID="state" CssClass="form_control" placeholder="Enter State (e.g. Gujarat)"></asp:TextBox>
                    <asp:Button runat="server" Text="Search State" ID="search_btn0" OnClick="search_btn_Click_state" CssClass="filter_btn" UseSubmitBehavior="false" CausesValidation="false" />
                </div>

                <div class="filter_group">
                    <label>Organ Pledged</label>
                    <asp:TextBox runat="server" ID="organ" CssClass="form_control" placeholder="Enter Organ (e.g. Kidney)"></asp:TextBox>
                    <asp:Button runat="server" Text="Search Organ" ID="search_btn1" OnClick="search_btn_Click_organ" CssClass="filter_btn" UseSubmitBehavior="false" CausesValidation="false" />
                </div>

                <div class="filter_group">
                    <label>Gender</label>
                    <asp:TextBox runat="server" ID="gneder" CssClass="form_control" placeholder="Enter Gender (e.g. Female)"></asp:TextBox>
                    <asp:Button runat="server" Text="Search Gender" ID="search_btn2" OnClick="search_btn_Click_gender" CssClass="filter_btn" UseSubmitBehavior="false" CausesValidation="false" />
                </div>
            </div>
        </div>

        <!-- Donor Grid Table -->
        <div class="gridview_responsive_container">
            <asp:GridView ID="dgv" runat="server" CssClass="custom_data_table" AutoGenerateColumns="true" GridLines="None">
                <HeaderStyle CssClass="table_header" />
                <RowStyle CssClass="table_row" />
                <AlternatingRowStyle CssClass="table_alt_row" />
                <EmptyDataTemplate>
                    <div class="empty_state">
                        <span>&#128203;</span>
                        <p>No donor records found matching the current query. Try adjusting your search keywords.</p>
                    </div>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>

    </div>
</asp:Content>
