<%@ Page Title="" Language="C#" MasterPageFile="MasterPage_Admin.master"
AutoEventWireup="true" CodeFile="m_msg.aspx.cs" Inherits="m_msg" %>

<asp:Content
  ID="Content1"
  ContentPlaceHolderID="ContentPlaceHolder1"
  Runat="Server"
>
  <br /><br />
  <asp:GridView
    ID="GridView1"
    runat="server"
    AutoGenerateColumns="False"
    DataKeyNames="Id"
    DataSourceID="SqlDataSource3"
    EmptyDataText="There are no data records to display."
    BackColor="White"
    BorderColor="#3366CC"
    BorderStyle="None"
    BorderWidth="1px"
    CellPadding="4"
    Height="422px"
    Width="1312px"
  >
    <Columns>
      <asp:BoundField
        DataField="Id"
        HeaderText="Id"
        ReadOnly="True"
        SortExpression="Id"
      />
      <asp:BoundField
        DataField="yr_nm"
        HeaderText="yr_nm"
        SortExpression="yr_nm"
      />
      <asp:BoundField
        DataField="yr_email"
        HeaderText="yr_email"
        SortExpression="yr_email"
      />
      <asp:BoundField
        DataField="yr_msg"
        HeaderText="yr_msg"
        SortExpression="yr_msg"
      />
    </Columns>
    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
    <PagerStyle
      BackColor="#99CCCC"
      ForeColor="#003399"
      HorizontalAlign="Left"
    />
    <RowStyle BackColor="White" ForeColor="#003399" />
    <SelectedRowStyle
      BackColor="#009999"
      Font-Bold="True"
      ForeColor="#CCFF99"
    />
    <SortedAscendingCellStyle BackColor="#EDF6F6" />
    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
    <SortedDescendingCellStyle BackColor="#D6DFDF" />
    <SortedDescendingHeaderStyle BackColor="#002876" />
  </asp:GridView>
  <asp:SqlDataSource
    ID="SqlDataSource3"
    runat="server"
    ConnectionString="<%$ ConnectionStrings:main_dbConnectionString3 %>"
    DeleteCommand="DELETE FROM [msg] WHERE [Id] = @Id"
    InsertCommand="INSERT INTO [msg] ([yr_nm], [yr_email], [yr_msg]) VALUES (@yr_nm, @yr_email, @yr_msg)"
    ProviderName="<%$ ConnectionStrings:main_dbConnectionString3.ProviderName %>"
    SelectCommand="SELECT [Id], [yr_nm], [yr_email], [yr_msg] FROM [msg]"
    UpdateCommand="UPDATE [msg] SET [yr_nm] = @yr_nm, [yr_email] = @yr_email, [yr_msg] = @yr_msg WHERE [Id] = @Id"
  >
    <DeleteParameters>
      <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
      <asp:Parameter Name="yr_nm" Type="String" />
      <asp:Parameter Name="yr_email" Type="String" />
      <asp:Parameter Name="yr_msg" Type="String" />
    </InsertParameters>
    <UpdateParameters>
      <asp:Parameter Name="yr_nm" Type="String" />
      <asp:Parameter Name="yr_email" Type="String" />
      <asp:Parameter Name="yr_msg" Type="String" />
      <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
  </asp:SqlDataSource>

  <br /><br />
  <hr />
  <br />
</asp:Content>
