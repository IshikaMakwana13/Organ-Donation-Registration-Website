<%@ Page Title="" Language="C#" MasterPageFile="MasterPage_Admin.master"
AutoEventWireup="true" CodeFile="m_patient.aspx.cs" Inherits="m_patient" %>

<asp:Content
  ID="Content1"
  ContentPlaceHolderID="ContentPlaceHolder1"
  Runat="Server"
>
  <br /><br />
  <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CITY : </label>
  <asp:DropDownList ID="city" runat="server" Height="42px" Width="150px">
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
  <asp:DropDownList ID="state" runat="server" Height="40px" Width="174px">
    <asp:ListItem>&lt;--STATE--&gt;</asp:ListItem>
    <asp:ListItem>GUJARAT</asp:ListItem>
    <asp:ListItem>MAHARASHTRA</asp:ListItem>
    <asp:ListItem>ANDHRA PRADESH</asp:ListItem>
    <asp:ListItem>ASSAM</asp:ListItem>
  </asp:DropDownList>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <label>ORGAN : </label>
  <asp:DropDownList ID="organ" runat="server" Height="46px" Width="161px">
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
  <asp:DropDownList ID="gender" runat="server" Height="34px" Width="185px">
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
    Height="31px"
    Width="187px"
  ></asp:TextBox>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <label> &nbsp;BLOOD GROUP : </label>
  <asp:DropDownList ID="city1" runat="server" Height="40px" Width="150px">
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

  <asp:Button
    runat="server"
    Text="DELETE"
    ID="delete_btn"
    Height="36px"
    Width="243px"
    UseSubmitBehavior="false"
    CausesValidation="false"
  />
  <br />

  <br />
  <asp:GridView
    ID="GridView2"
    runat="server"
    AutoGenerateColumns="False"
    DataKeyNames="Id"
    DataSourceID="SqlDataSource1"
    EmptyDataText="There are no data records to display."
    CellPadding="4"
    ForeColor="#333333"
    GridLines="None"
  >
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
      <asp:BoundField
        DataField="Id"
        HeaderText="Id"
        ReadOnly="True"
        SortExpression="Id"
      />
      <asp:BoundField
        DataField="pf_name"
        HeaderText="pf_name"
        SortExpression="pf_name"
      />
      <asp:BoundField
        DataField="pm_name"
        HeaderText="pm_name"
        SortExpression="pm_name"
      />
      <asp:BoundField
        DataField="pl_name"
        HeaderText="pl_name"
        SortExpression="pl_name"
      />
      <asp:BoundField
        DataField="p_age"
        HeaderText="p_age"
        SortExpression="p_age"
      />
      <asp:BoundField
        DataField="p_dob"
        HeaderText="p_dob"
        SortExpression="p_dob"
      />
      <asp:BoundField
        DataField="p_gender"
        HeaderText="p_gender"
        SortExpression="p_gender"
      />
      <asp:BoundField
        DataField="p_bloodgrp"
        HeaderText="p_bloodgrp"
        SortExpression="p_bloodgrp"
      />
      <asp:BoundField
        DataField="p_idetitycard"
        HeaderText="p_idetitycard"
        SortExpression="p_idetitycard"
      />
      <asp:BoundField
        DataField="p_identityno"
        HeaderText="p_identityno"
        SortExpression="p_identityno"
      />
      <asp:BoundField
        DataField="p_add"
        HeaderText="p_add"
        SortExpression="p_add"
      />
      <asp:BoundField
        DataField="p_email"
        HeaderText="p_email"
        SortExpression="p_email"
      />
      <asp:BoundField
        DataField="p_city"
        HeaderText="p_city"
        SortExpression="p_city"
      />
      <asp:BoundField
        DataField="p_district"
        HeaderText="p_district"
        SortExpression="p_district"
      />
      <asp:BoundField
        DataField="p_state"
        HeaderText="p_state"
        SortExpression="p_state"
      />
      <asp:BoundField
        DataField="p_pincode"
        HeaderText="p_pincode"
        SortExpression="p_pincode"
      />
      <asp:BoundField
        DataField="p_mobileno"
        HeaderText="p_mobileno"
        SortExpression="p_mobileno"
      />
      <asp:BoundField
        DataField="p_occupation"
        HeaderText="p_occupation"
        SortExpression="p_occupation"
      />
      <asp:BoundField
        DataField="p_organ"
        HeaderText="p_organ"
        SortExpression="p_organ"
      />
      <asp:BoundField
        DataField="emg_nmp"
        HeaderText="emg_nmp"
        SortExpression="emg_nmp"
      />
      <asp:BoundField
        DataField="emg_nop"
        HeaderText="emg_nop"
        SortExpression="emg_nop"
      />
      <asp:BoundField
        DataField="emg_addp"
        HeaderText="emg_addp"
        SortExpression="emg_addp"
      />
      <asp:BoundField
        DataField="hear_p"
        HeaderText="hear_p"
        SortExpression="hear_p"
      />
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle
      BackColor="#284775"
      ForeColor="White"
      HorizontalAlign="Center"
    />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle
      BackColor="#E2DED6"
      Font-Bold="True"
      ForeColor="#333333"
    />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
  </asp:GridView>
  <asp:SqlDataSource
    ID="SqlDataSource1"
    runat="server"
    ConnectionString="<%$ ConnectionStrings:main_dbConnectionString3 %>"
    DeleteCommand="DELETE FROM [organpatient] WHERE [Id] = @Id"
    InsertCommand="INSERT INTO [organpatient] ([pf_name], [pm_name], [pl_name], [p_age], [p_dob], [p_gender], [p_bloodgrp], [p_idetitycard], [p_identityno], [p_add], [p_email], [p_city], [p_district], [p_state], [p_pincode], [p_mobileno], [p_occupation], [p_organ], [emg_nmp], [emg_nop], [emg_addp], [hear_p]) VALUES (@pf_name, @pm_name, @pl_name, @p_age, @p_dob, @p_gender, @p_bloodgrp, @p_idetitycard, @p_identityno, @p_add, @p_email, @p_city, @p_district, @p_state, @p_pincode, @p_mobileno, @p_occupation, @p_organ, @emg_nmp, @emg_nop, @emg_addp, @hear_p)"
    ProviderName="<%$ ConnectionStrings:main_dbConnectionString3.ProviderName %>"
    SelectCommand="SELECT [Id], [pf_name], [pm_name], [pl_name], [p_age], [p_dob], [p_gender], [p_bloodgrp], [p_idetitycard], [p_identityno], [p_add], [p_email], [p_city], [p_district], [p_state], [p_pincode], [p_mobileno], [p_occupation], [p_organ], [emg_nmp], [emg_nop], [emg_addp], [hear_p] FROM [organpatient]"
    UpdateCommand="UPDATE [organpatient] SET [pf_name] = @pf_name, [pm_name] = @pm_name, [pl_name] = @pl_name, [p_age] = @p_age, [p_dob] = @p_dob, [p_gender] = @p_gender, [p_bloodgrp] = @p_bloodgrp, [p_idetitycard] = @p_idetitycard, [p_identityno] = @p_identityno, [p_add] = @p_add, [p_email] = @p_email, [p_city] = @p_city, [p_district] = @p_district, [p_state] = @p_state, [p_pincode] = @p_pincode, [p_mobileno] = @p_mobileno, [p_occupation] = @p_occupation, [p_organ] = @p_organ, [emg_nmp] = @emg_nmp, [emg_nop] = @emg_nop, [emg_addp] = @emg_addp, [hear_p] = @hear_p WHERE [Id] = @Id"
  >
    <DeleteParameters>
      <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
      <asp:Parameter Name="pf_name" Type="String" />
      <asp:Parameter Name="pm_name" Type="String" />
      <asp:Parameter Name="pl_name" Type="String" />
      <asp:Parameter Name="p_age" Type="Int32" />
      <asp:Parameter DbType="Date" Name="p_dob" />
      <asp:Parameter Name="p_gender" Type="String" />
      <asp:Parameter Name="p_bloodgrp" Type="String" />
      <asp:Parameter Name="p_idetitycard" Type="String" />
      <asp:Parameter Name="p_identityno" Type="String" />
      <asp:Parameter Name="p_add" Type="String" />
      <asp:Parameter Name="p_email" Type="String" />
      <asp:Parameter Name="p_city" Type="String" />
      <asp:Parameter Name="p_district" Type="String" />
      <asp:Parameter Name="p_state" Type="String" />
      <asp:Parameter Name="p_pincode" Type="Int32" />
      <asp:Parameter Name="p_mobileno" Type="Int64" />
      <asp:Parameter Name="p_occupation" Type="String" />
      <asp:Parameter Name="p_organ" Type="String" />
      <asp:Parameter Name="emg_nmp" Type="String" />
      <asp:Parameter Name="emg_nop" Type="Int64" />
      <asp:Parameter Name="emg_addp" Type="String" />
      <asp:Parameter Name="hear_p" Type="String" />
    </InsertParameters>
    <UpdateParameters>
      <asp:Parameter Name="pf_name" Type="String" />
      <asp:Parameter Name="pm_name" Type="String" />
      <asp:Parameter Name="pl_name" Type="String" />
      <asp:Parameter Name="p_age" Type="Int32" />
      <asp:Parameter DbType="Date" Name="p_dob" />
      <asp:Parameter Name="p_gender" Type="String" />
      <asp:Parameter Name="p_bloodgrp" Type="String" />
      <asp:Parameter Name="p_idetitycard" Type="String" />
      <asp:Parameter Name="p_identityno" Type="String" />
      <asp:Parameter Name="p_add" Type="String" />
      <asp:Parameter Name="p_email" Type="String" />
      <asp:Parameter Name="p_city" Type="String" />
      <asp:Parameter Name="p_district" Type="String" />
      <asp:Parameter Name="p_state" Type="String" />
      <asp:Parameter Name="p_pincode" Type="Int32" />
      <asp:Parameter Name="p_mobileno" Type="Int64" />
      <asp:Parameter Name="p_occupation" Type="String" />
      <asp:Parameter Name="p_organ" Type="String" />
      <asp:Parameter Name="emg_nmp" Type="String" />
      <asp:Parameter Name="emg_nop" Type="Int64" />
      <asp:Parameter Name="emg_addp" Type="String" />
      <asp:Parameter Name="hear_p" Type="String" />
      <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
  </asp:SqlDataSource>
</asp:Content>
