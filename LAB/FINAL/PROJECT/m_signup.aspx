<%@ Page Title="" Language="C#" MasterPageFile="MasterPage_Admin.master"
AutoEventWireup="true" CodeFile="m_signup.aspx.cs" Inherits="m_signup" %>

<asp:Content
  ID="Content1"
  ContentPlaceHolderID="ContentPlaceHolder1"
  Runat="Server"
>
  <br /><br />

  <asp:GridView
    ID="GridView2"
    runat="server"
    AutoGenerateColumns="False"
    DataKeyNames="UId"
    DataSourceID="SqlDataSource1"
    EmptyDataText="There are no data records to display."
    BackColor="White"
    BorderColor="#DEDFDE"
    BorderStyle="None"
    BorderWidth="1px"
    CellPadding="4"
    ForeColor="Black"
    GridLines="Vertical"
    Height="311px"
    Width="1310px"
  >
    <AlternatingRowStyle BackColor="White" />
    <Columns>
      <asp:BoundField
        DataField="UId"
        HeaderText="UId"
        ReadOnly="True"
        SortExpression="UId"
      />
      <asp:BoundField
        DataField="user_name"
        HeaderText="user_name"
        SortExpression="user_name"
      />
      <asp:BoundField
        DataField="email"
        HeaderText="email"
        SortExpression="email"
      />
      <asp:BoundField
        DataField="password"
        HeaderText="password"
        SortExpression="password"
      />
    </Columns>
    <FooterStyle BackColor="#CCCC99" />
    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
    <RowStyle BackColor="#F7F7DE" />
    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FBFBF2" />
    <SortedAscendingHeaderStyle BackColor="#848384" />
    <SortedDescendingCellStyle BackColor="#EAEAD3" />
    <SortedDescendingHeaderStyle BackColor="#575357" />
  </asp:GridView>
  <asp:SqlDataSource
    ID="SqlDataSource1"
    runat="server"
    ConnectionString="<%$ ConnectionStrings:main_dbConnectionString3 %>"
    DeleteCommand="DELETE FROM [signup] WHERE [UId] = @UId"
    InsertCommand="INSERT INTO [signup] ([user_name], [email], [password]) VALUES (@user_name, @email, @password)"
    ProviderName="<%$ ConnectionStrings:main_dbConnectionString3.ProviderName %>"
    SelectCommand="SELECT [UId], [user_name], [email], [password] FROM [signup]"
    UpdateCommand="UPDATE [signup] SET [user_name] = @user_name, [email] = @email, [password] = @password WHERE [UId] = @UId"
  >
    <DeleteParameters>
      <asp:Parameter Name="UId" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
      <asp:Parameter Name="user_name" Type="String" />
      <asp:Parameter Name="email" Type="String" />
      <asp:Parameter Name="password" Type="String" />
    </InsertParameters>
    <UpdateParameters>
      <asp:Parameter Name="user_name" Type="String" />
      <asp:Parameter Name="email" Type="String" />
      <asp:Parameter Name="password" Type="String" />
      <asp:Parameter Name="UId" Type="Int32" />
    </UpdateParameters>
  </asp:SqlDataSource>
</asp:Content>
