<%@ Page Title="" Language="C#" MasterPageFile="MasterPage_Admin.master"
AutoEventWireup="true" CodeFile="m_donor.aspx.cs" Inherits="m_donor" %>

<asp:Content
  ID="Content1"
  ContentPlaceHolderID="ContentPlaceHolder1"
  Runat="Server"
>
  <br /><br />
  <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CITY : </label>
  <asp:DropDownList ID="city" runat="server" Height="36px" Width="127px">
    <asp:ListItem>&lt;--CITY__&gt;</asp:ListItem>
    <asp:ListItem>KHAMBHALIA</asp:ListItem>
    <asp:ListItem>DWARKA</asp:ListItem>
    <asp:ListItem>SURAT</asp:ListItem>
    <asp:ListItem>JAMNAGAR</asp:ListItem>
    <asp:ListItem>VADODARA</asp:ListItem>
    <asp:ListItem>PUNE</asp:ListItem>
    <asp:ListItem>CHITTOR</asp:ListItem>
    <asp:ListItem>GUWAHATI</asp:ListItem>
  </asp:DropDownList>

  <label
    >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; STATE :
  </label>
  <asp:DropDownList ID="state" runat="server" Height="40px" Width="163px">
    <asp:ListItem>&lt;--STATE--&gt;</asp:ListItem>
    <asp:ListItem>GUJARAT</asp:ListItem>
    <asp:ListItem>MAHARASHTRA</asp:ListItem>
    <asp:ListItem>ANDHRA PRADESH</asp:ListItem>
    <asp:ListItem>ASSAM</asp:ListItem>
  </asp:DropDownList>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <label>ORGAN : </label>
  <asp:DropDownList ID="organ" runat="server" Height="43px" Width="171px">
    <asp:ListItem>&lt;--ORGAN--&gt;</asp:ListItem>
    <asp:ListItem>ALL</asp:ListItem>
    <asp:ListItem>HEART</asp:ListItem>
    <asp:ListItem>LUNGS</asp:ListItem>
    <asp:ListItem>LIVER</asp:ListItem>
    <asp:ListItem>KIDNEY</asp:ListItem>
    <asp:ListItem>INTESTINE</asp:ListItem>
    <asp:ListItem>PANCREAS</asp:ListItem>
    <asp:ListItem>HANDS</asp:ListItem>
    <asp:ListItem>FACE</asp:ListItem>
    <asp:ListItem>BLOOD &amp; PLATELETS</asp:ListItem>
    <asp:ListItem>CORNEA</asp:ListItem>
    <asp:ListItem>MIDDLE EAR</asp:ListItem>
    <asp:ListItem>HEART VALVES</asp:ListItem>
    <asp:ListItem>SKIN</asp:ListItem>
    <asp:ListItem>BONES</asp:ListItem>
    <asp:ListItem>TENDONDS</asp:ListItem>
  </asp:DropDownList>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <label>GENDER : </label>
  <asp:DropDownList ID="gender" runat="server" Height="33px" Width="161px">
    <asp:ListItem>&lt;--GENDER--&gt;</asp:ListItem>
    <asp:ListItem>MALE</asp:ListItem>
    <asp:ListItem>FEMALE</asp:ListItem>
    <asp:ListItem>OTHER</asp:ListItem>
  </asp:DropDownList>

  &nbsp;&nbsp;&nbsp;&nbsp;<br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <br />
  <label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AGE : </label>
  <asp:TextBox
    runat="server"
    ID="admin_age_txt"
    Height="33px"
    Width="201px"
  ></asp:TextBox>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <label> &nbsp;BLOOD GROUP : </label>
  <asp:DropDownList ID="city1" runat="server" Height="35px" Width="154px">
    <asp:ListItem>---Select---</asp:ListItem>
    <asp:ListItem>A+</asp:ListItem>
    <asp:ListItem>A-</asp:ListItem>
    <asp:ListItem>B+</asp:ListItem>
    <asp:ListItem>B-</asp:ListItem>
    <asp:ListItem>AB+</asp:ListItem>
    <asp:ListItem>AB-</asp:ListItem>
    <asp:ListItem>O+</asp:ListItem>
    <asp:ListItem>O-</asp:ListItem>
  </asp:DropDownList>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;

  <br />
  <asp:Button
    runat="server"
    Text="SEARCH"
    ID="srch_btn"
    Height="36px"
    Width="243px"
    UseSubmitBehavior="false"
    CausesValidation="false"
    OnClick="delete_btn_Click"
  />
  <br />

  <asp:GridView
    ID="GridView1"
    runat="server"
    AutoGenerateColumns="False"
    DataKeyNames="Id"
    DataSourceID="SqlDataSource2"
    EmptyDataText="There are no data records to display."
    BackColor="White"
    BorderColor="#CCCCCC"
    BorderStyle="None"
    BorderWidth="1px"
    CellPadding="4"
    ForeColor="Black"
    GridLines="Horizontal"
  >
    <Columns>
      <asp:BoundField
        DataField="Id"
        HeaderText="Id"
        ReadOnly="True"
        SortExpression="Id"
      />
      <asp:BoundField
        DataField="ft_name"
        HeaderText="ft_name"
        SortExpression="ft_name"
      />
      <asp:BoundField
        DataField="md_name"
        HeaderText="md_name"
        SortExpression="md_name"
      />
      <asp:BoundField
        DataField="lt_name"
        HeaderText="lt_name"
        SortExpression="lt_name"
      />
      <asp:BoundField
        DataField="m_f_name"
        HeaderText="m_f_name"
        SortExpression="m_f_name"
      />
      <asp:BoundField
        DataField="d_address"
        HeaderText="d_address"
        SortExpression="d_address"
      />
      <asp:BoundField
        DataField="d_city"
        HeaderText="d_city"
        SortExpression="d_city"
      />
      <asp:BoundField
        DataField="d_district"
        HeaderText="d_district"
        SortExpression="d_district"
      />
      <asp:BoundField
        DataField="d_state"
        HeaderText="d_state"
        SortExpression="d_state"
      />
      <asp:BoundField
        DataField="d_pincode"
        HeaderText="d_pincode"
        SortExpression="d_pincode"
      />
      <asp:BoundField
        DataField="d_mobileno"
        HeaderText="d_mobileno"
        SortExpression="d_mobileno"
      />
      <asp:BoundField
        DataField="d_occupation"
        HeaderText="d_occupation"
        SortExpression="d_occupation"
      />
      <asp:BoundField
        DataField="d_email"
        HeaderText="d_email"
        SortExpression="d_email"
      />
      <asp:BoundField
        DataField="d_dob"
        HeaderText="d_dob"
        SortExpression="d_dob"
      />
      <asp:BoundField
        DataField="d_age"
        HeaderText="d_age"
        SortExpression="d_age"
      />
      <asp:BoundField
        DataField="d_gender"
        HeaderText="d_gender"
        SortExpression="d_gender"
      />
      <asp:BoundField
        DataField="d_blood_grp"
        HeaderText="d_blood_grp"
        SortExpression="d_blood_grp"
      />
      <asp:BoundField
        DataField="identity_card"
        HeaderText="identity_card"
        SortExpression="identity_card"
      />
      <asp:BoundField
        DataField="identity_no"
        HeaderText="identity_no"
        SortExpression="identity_no"
      />
      <asp:BoundField
        DataField="organ_chb"
        HeaderText="organ_chb"
        SortExpression="organ_chb"
      />
      <asp:BoundField
        DataField="emg_nm"
        HeaderText="emg_nm"
        SortExpression="emg_nm"
      />
      <asp:BoundField
        DataField="emg_no"
        HeaderText="emg_no"
        SortExpression="emg_no"
      />
      <asp:BoundField
        DataField="emg_add"
        HeaderText="emg_add"
        SortExpression="emg_add"
      />
      <asp:BoundField
        DataField="hear_d"
        HeaderText="hear_d"
        SortExpression="hear_d"
      />
    </Columns>
    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F7F7F7" />
    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
    <SortedDescendingCellStyle BackColor="#E5E5E5" />
    <SortedDescendingHeaderStyle BackColor="#242121" />
  </asp:GridView>
  <asp:SqlDataSource
    ID="SqlDataSource2"
    runat="server"
    ConnectionString="<%$ ConnectionStrings:main_dbConnectionString3 %>"
    DeleteCommand="DELETE FROM [organdonor] WHERE [Id] = @Id"
    InsertCommand="INSERT INTO [organdonor] ([ft_name], [md_name], [lt_name], [m_f_name], [d_address], [d_city], [d_district], [d_state], [d_pincode], [d_mobileno], [d_occupation], [d_email], [d_dob], [d_age], [d_gender], [d_blood_grp], [identity_card], [identity_no], [organ_chb], [emg_nm], [emg_no], [emg_add], [hear_d]) VALUES (@ft_name, @md_name, @lt_name, @m_f_name, @d_address, @d_city, @d_district, @d_state, @d_pincode, @d_mobileno, @d_occupation, @d_email, @d_dob, @d_age, @d_gender, @d_blood_grp, @identity_card, @identity_no, @organ_chb, @emg_nm, @emg_no, @emg_add, @hear_d)"
    ProviderName="<%$ ConnectionStrings:main_dbConnectionString3.ProviderName %>"
    SelectCommand="SELECT [Id], [ft_name], [md_name], [lt_name], [m_f_name], [d_address], [d_city], [d_district], [d_state], [d_pincode], [d_mobileno], [d_occupation], [d_email], [d_dob], [d_age], [d_gender], [d_blood_grp], [identity_card], [identity_no], [organ_chb], [emg_nm], [emg_no], [emg_add], [hear_d] FROM [organdonor]"
    UpdateCommand="UPDATE [organdonor] SET [ft_name] = @ft_name, [md_name] = @md_name, [lt_name] = @lt_name, [m_f_name] = @m_f_name, [d_address] = @d_address, [d_city] = @d_city, [d_district] = @d_district, [d_state] = @d_state, [d_pincode] = @d_pincode, [d_mobileno] = @d_mobileno, [d_occupation] = @d_occupation, [d_email] = @d_email, [d_dob] = @d_dob, [d_age] = @d_age, [d_gender] = @d_gender, [d_blood_grp] = @d_blood_grp, [identity_card] = @identity_card, [identity_no] = @identity_no, [organ_chb] = @organ_chb, [emg_nm] = @emg_nm, [emg_no] = @emg_no, [emg_add] = @emg_add, [hear_d] = @hear_d WHERE [Id] = @Id"
  >
    <DeleteParameters>
      <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
      <asp:Parameter Name="ft_name" Type="String" />
      <asp:Parameter Name="md_name" Type="String" />
      <asp:Parameter Name="lt_name" Type="String" />
      <asp:Parameter Name="m_f_name" Type="String" />
      <asp:Parameter Name="d_address" Type="String" />
      <asp:Parameter Name="d_city" Type="String" />
      <asp:Parameter Name="d_district" Type="String" />
      <asp:Parameter Name="d_state" Type="String" />
      <asp:Parameter Name="d_pincode" Type="Int32" />
      <asp:Parameter Name="d_mobileno" Type="Int64" />
      <asp:Parameter Name="d_occupation" Type="String" />
      <asp:Parameter Name="d_email" Type="String" />
      <asp:Parameter DbType="Date" Name="d_dob" />
      <asp:Parameter Name="d_age" Type="Int32" />
      <asp:Parameter Name="d_gender" Type="String" />
      <asp:Parameter Name="d_blood_grp" Type="String" />
      <asp:Parameter Name="identity_card" Type="String" />
      <asp:Parameter Name="identity_no" Type="String" />
      <asp:Parameter Name="organ_chb" Type="String" />
      <asp:Parameter Name="emg_nm" Type="String" />
      <asp:Parameter Name="emg_no" Type="Int64" />
      <asp:Parameter Name="emg_add" Type="String" />
      <asp:Parameter Name="hear_d" Type="String" />
    </InsertParameters>
    <UpdateParameters>
      <asp:Parameter Name="ft_name" Type="String" />
      <asp:Parameter Name="md_name" Type="String" />
      <asp:Parameter Name="lt_name" Type="String" />
      <asp:Parameter Name="m_f_name" Type="String" />
      <asp:Parameter Name="d_address" Type="String" />
      <asp:Parameter Name="d_city" Type="String" />
      <asp:Parameter Name="d_district" Type="String" />
      <asp:Parameter Name="d_state" Type="String" />
      <asp:Parameter Name="d_pincode" Type="Int32" />
      <asp:Parameter Name="d_mobileno" Type="Int64" />
      <asp:Parameter Name="d_occupation" Type="String" />
      <asp:Parameter Name="d_email" Type="String" />
      <asp:Parameter DbType="Date" Name="d_dob" />
      <asp:Parameter Name="d_age" Type="Int32" />
      <asp:Parameter Name="d_gender" Type="String" />
      <asp:Parameter Name="d_blood_grp" Type="String" />
      <asp:Parameter Name="identity_card" Type="String" />
      <asp:Parameter Name="identity_no" Type="String" />
      <asp:Parameter Name="organ_chb" Type="String" />
      <asp:Parameter Name="emg_nm" Type="String" />
      <asp:Parameter Name="emg_no" Type="Int64" />
      <asp:Parameter Name="emg_add" Type="String" />
      <asp:Parameter Name="hear_d" Type="String" />
      <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
  </asp:SqlDataSource>
</asp:Content>
