<%@ Page Language="C#" AutoEventWireup="true" CodeFile="8_APPLY_AS_DONOR.aspx.cs" Inherits="APPLY_AS_DONOR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0" />
    <title>Pledge As Organ Donor | Ishika Organ Donation</title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@400;600;700;800&family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet" />
    <link href="S_9_DONOR_APPLY.css?v=4" rel="stylesheet" />

    <style>
/* ==========================================================================
   DONOR & PATIENT APPLICATION AND REGISTRY STYLES
   ========================================================================== */

.apply_page_body {
  font-family: 'Poppins', 'Outfit', sans-serif;
  background: linear-gradient(180deg, #f0f9ff 0%, #e2e8f0 100%);
  color: #1e293b;
  margin: 0;
  padding: 30px 15px;
  min-height: 100vh;
}

.apply_container {
  max-width: 1050px;
  margin: 0 auto;
}

.top_nav_back {
  margin-bottom: 20px;
}

.back_link {
  display: inline-flex;
  align-items: center;
  gap: 8px;
  background: #ffffff;
  color: #0369a1;
  padding: 8px 18px;
  border-radius: 9999px;
  font-weight: 700;
  font-size: 0.9rem;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
  border: 1px solid #bae6fd;
  text-decoration: none;
  transition: all 0.3s ease;
}

.back_link:hover {
  background: #0284c7;
  color: #ffffff;
  transform: translateX(-4px);
}

.form_header_card {
  background: linear-gradient(135deg, #0284c7 0%, #0369a1 100%);
  color: #ffffff;
  padding: 35px 30px;
  border-radius: 16px;
  box-shadow: 0 10px 30px rgba(2, 132, 199, 0.25);
  margin-bottom: 30px;
  text-align: center;
}

.patient_header_card {
  background: linear-gradient(135deg, #0d9488 0%, #0f766e 100%);
  box-shadow: 0 10px 30px rgba(13, 148, 136, 0.25);
}

.portal_badge {
  display: inline-block;
  background: rgba(255, 255, 255, 0.2);
  color: #ffffff;
  padding: 4px 14px;
  border-radius: 9999px;
  font-size: 0.8rem;
  font-weight: 700;
  letter-spacing: 1px;
  margin-bottom: 10px;
  border: 1px solid rgba(255, 255, 255, 0.3);
}

.form_header_card h1 {
  font-family: 'Outfit', sans-serif;
  font-size: 2rem;
  font-weight: 800;
  margin-bottom: 8px;
}

.form_header_card p {
  color: #e0f2fe;
  font-size: 0.98rem;
  max-width: 800px;
  margin: 0 auto;
}

.highlight_user {
  color: #fde047;
  font-weight: 800;
  text-decoration: underline;
  text-transform: uppercase;
}

.form_body_wrapper {
  display: flex;
  flex-direction: column;
  gap: 25px;
}

.form_section_card {
  background: #ffffff;
  border-radius: 16px;
  padding: 30px;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.06);
  border: 1px solid #e2e8f0;
}

.section_title_wrap {
  display: flex;
  align-items: center;
  gap: 12px;
  margin-bottom: 24px;
  padding-bottom: 12px;
  border-bottom: 2px solid #f1f5f9;
}

.step_num {
  width: 32px;
  height: 32px;
  background: #0284c7;
  color: #ffffff;
  border-radius: 9999px;
  display: flex;
  align-items: center;
  justify-content: center;
  font-weight: 800;
  font-size: 0.95rem;
}

.section_title_wrap h2 {
  font-family: 'Outfit', sans-serif;
  font-size: 1.35rem;
  font-weight: 700;
  color: #1e293b;
}

/* Grids for Form Rows */
.form_row_grid {
  display: grid;
  gap: 20px;
  margin-bottom: 15px;
}

.single_col { grid-template-columns: 1fr; }
.two_col { grid-template-columns: repeat(2, 1fr); }
.three_col { grid-template-columns: repeat(3, 1fr); }
.four_col { grid-template-columns: repeat(4, 1fr); }

.input_field_wrap {
  display: flex;
  flex-direction: column;
  gap: 6px;
}

.input_field_wrap label {
  font-size: 0.88rem;
  font-weight: 600;
  color: #334155;
}

.req {
  color: #ef4444;
  font-weight: 700;
}

.form_input, .form_select, .form_textarea {
  width: 100%;
  padding: 12px 14px;
  border-radius: 8px;
  border: 1px solid #cbd5e1;
  font-family: inherit;
  font-size: 0.95rem;
  background: #f8fafc;
  color: #1e293b;
  box-sizing: border-box;
  transition: all 0.25s ease;
}

.form_input:focus, .form_select:focus, .form_textarea:focus {
  outline: none;
  background: #ffffff;
  border-color: #0284c7;
  box-shadow: 0 0 0 3px rgba(2, 132, 199, 0.18);
}

.val_error {
  color: #ef4444;
  font-size: 0.78rem;
  font-weight: 600;
  margin-top: 2px;
}

/* Checkbox Organs Grid */
.organs_checkbox_wrapper {
  background: #f8fafc;
  padding: 20px;
  border-radius: 12px;
  border: 1px solid #e2e8f0;
}

.modern_checkbox_list {
  width: 100%;
}

.modern_checkbox_list td {
  padding: 10px 12px;
}

.modern_checkbox_list label {
  font-size: 0.9rem;
  font-weight: 600;
  color: #1e293b;
  cursor: pointer;
  margin-left: 6px;
}

.modern_checkbox_list input[type="checkbox"] {
  width: 18px;
  height: 18px;
  accent-color: #0284c7;
  cursor: pointer;
}

/* Declarations */
.declaration_box {
  margin-top: 20px;
  display: flex;
  flex-direction: column;
  gap: 12px;
  padding-top: 15px;
  border-top: 1px solid #e2e8f0;
}

.check_declaration {
  display: flex;
  align-items: center;
  gap: 10px;
  font-size: 0.9rem;
  color: #334155;
  cursor: pointer;
}

.check_declaration input[type="checkbox"] {
  width: 18px;
  height: 18px;
  accent-color: #0284c7;
}

.check_declaration a {
  color: #0284c7;
  text-decoration: underline;
  font-weight: 600;
}

/* Submit Button */
.form_submit_wrap {
  text-align: center;
  margin-top: 10px;
}

.btn_primary_submit {
  background: linear-gradient(135deg, #0284c7 0%, #0369a1 100%);
  color: #ffffff;
  border: none;
  padding: 16px 40px;
  font-size: 1.1rem;
  font-weight: 800;
  border-radius: 9999px;
  cursor: pointer;
  box-shadow: 0 8px 25px rgba(2, 132, 199, 0.4);
  transition: all 0.3s ease;
  letter-spacing: 0.5px;
}

.btn_primary_submit:hover {
  transform: translateY(-3px) scale(1.03);
  box-shadow: 0 14px 30px rgba(2, 132, 199, 0.55);
}

.patient_submit_btn {
  background: linear-gradient(135deg, #0d9488 0%, #0f766e 100%);
  box-shadow: 0 8px 25px rgba(13, 148, 136, 0.4);
}

.patient_submit_btn:hover {
  box-shadow: 0 14px 30px rgba(13, 148, 136, 0.55);
}

/* ==========================================================================
   REGISTRY LIST & SEARCH PAGES (6_DONOR.aspx & 7_PATIENT.aspx)
   ========================================================================== */
.registry_page_wrapper {
  max-width: 1240px;
  margin: 0 auto;
  padding: 20px 15px;
}

.registry_header {
  text-align: center;
  background: #ffffff;
  border-radius: 16px;
  padding: 35px 25px;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.06);
  border: 1px solid #e2e8f0;
  margin-bottom: 30px;
}

.registry_badge {
  display: inline-block;
  background: #e0f2fe;
  color: #0369a1;
  padding: 4px 14px;
  border-radius: 9999px;
  font-size: 0.8rem;
  font-weight: 700;
  letter-spacing: 1px;
  margin-bottom: 10px;
}

.patient_badge {
  background: #ccfbf1;
  color: #0f766e;
}

.registry_header h1 {
  font-family: 'Outfit', sans-serif;
  font-size: 2rem;
  font-weight: 800;
  color: #1e293b;
  margin-bottom: 8px;
}

.reg_user_name {
  color: #d97706;
  text-decoration: underline;
  text-transform: uppercase;
}

.registry_header p {
  color: #64748b;
  font-size: 0.95rem;
  margin-bottom: 20px;
}

.registry_cta_wrap {
  display: flex;
  justify-content: center;
}

.apply_portal_btn {
  display: inline-flex;
  align-items: center;
  gap: 10px;
  padding: 12px 28px;
  border-radius: 9999px;
  font-weight: 800;
  font-size: 0.95rem;
  text-decoration: none;
  transition: all 0.3s ease;
}

.donor_portal_btn {
  background: linear-gradient(135deg, #e11d48 0%, #be123c 100%);
  color: #ffffff;
  box-shadow: 0 6px 20px rgba(225, 29, 72, 0.35);
}

.donor_portal_btn:hover {
  transform: translateY(-2px);
  box-shadow: 0 10px 25px rgba(225, 29, 72, 0.5);
}

.patient_portal_btn {
  background: linear-gradient(135deg, #0d9488 0%, #0f766e 100%);
  color: #ffffff;
  box-shadow: 0 6px 20px rgba(13, 148, 136, 0.35);
}

.patient_portal_btn:hover {
  transform: translateY(-2px);
  box-shadow: 0 10px 25px rgba(13, 148, 136, 0.5);
}

.search_filter_card {
  background: #ffffff;
  border-radius: 16px;
  padding: 30px;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.06);
  border: 1px solid #e2e8f0;
  margin-bottom: 30px;
}

.search_filter_card h3 {
  font-family: 'Outfit', sans-serif;
  font-size: 1.3rem;
  font-weight: 800;
  color: #1e293b;
  margin-bottom: 20px;
}

.search_fields_grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 20px;
}

.filter_group {
  display: flex;
  flex-direction: column;
  gap: 8px;
}

.filter_group label {
  font-size: 0.85rem;
  font-weight: 700;
  color: #334155;
}

.filter_btn {
  background: #0284c7;
  color: #ffffff;
  border: none;
  padding: 10px 16px;
  border-radius: 8px;
  font-weight: 700;
  font-size: 0.88rem;
  cursor: pointer;
  transition: all 0.25s ease;
}

.filter_btn:hover {
  background: #0369a1;
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(2, 132, 199, 0.3);
}

/* GridView Data Table */
.gridview_responsive_container {
  width: 100%;
  overflow-x: auto;
  background: #ffffff;
  border-radius: 16px;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.06);
  border: 1px solid #e2e8f0;
  padding: 10px;
}

.custom_data_table {
  width: 100%;
  border-collapse: collapse;
  text-align: left;
}

.table_header th {
  background: #0284c7;
  color: #ffffff;
  padding: 14px 16px;
  font-size: 0.88rem;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 0.5px;
}

.table_row td, .table_alt_row td {
  padding: 14px 16px;
  border-bottom: 1px solid #f1f5f9;
  font-size: 0.9rem;
  color: #334155;
}

.table_alt_row {
  background: #f8fafc;
}

.empty_state {
  text-align: center;
  padding: 40px 20px;
  color: #64748b;
}

.empty_state span {
  font-size: 2.5rem;
  display: block;
  margin-bottom: 10px;
}

/* ==========================================================================
   RESPONSIVE QUERIES
   ========================================================================== */
@media (max-width: 992px) {
  .search_fields_grid {
    grid-template-columns: repeat(2, 1fr);
  }
  .four_col {
    grid-template-columns: repeat(2, 1fr);
  }
  .three_col {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media (max-width: 600px) {
  .search_fields_grid, .two_col, .three_col, .four_col {
    grid-template-columns: 1fr;
  }
  .form_header_card h1 {
    font-size: 1.5rem;
  }
  .form_section_card {
    padding: 20px 15px;
  }
  .modern_checkbox_list td {
    display: block;
    width: 100%;
  }
}

    </style>
    <script type="text/javascript">
        function autoCalculateAge() {
            var dobElem = document.getElementById('<%= dob.ClientID %>');
            var ageElem = document.getElementById('<%= age.ClientID %>');
            if (dobElem && ageElem && dobElem.value) {
                var birthDate = new Date(dobElem.value);
                var today = new Date();
                var calculatedAge = today.getFullYear() - birthDate.getFullYear();
                var monthDiff = today.getMonth() - birthDate.getMonth();
                if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < birthDate.getDate())) {
                    calculatedAge--;
                }
                if (calculatedAge >= 0 && calculatedAge <= 125) {
                    ageElem.value = calculatedAge;
                }
            }
        }

        document.addEventListener('DOMContentLoaded', function () {
            var dobElem = document.getElementById('<%= dob.ClientID %>');
            if (dobElem) {
                dobElem.addEventListener('change', autoCalculateAge);
                dobElem.addEventListener('input', autoCalculateAge);
            }
        });
    </script>
</head>

<body class="apply_page_body">
    <form id="form1" runat="server">
        <div class="apply_container">
            
            <div class="top_nav_back">
                <a href="6_DONOR.aspx" class="back_link">&larr; Back to Donor Portal</a>
            </div>

            <div class="form_header_card">
                <span class="portal_badge">DONOR REGISTRATION</span>
                <h1>Pledge To Be An Organ Donor</h1>
                <p>Welcome, <asp:Label runat="server" ID="user_name_c" Text="User" CssClass="highlight_user"></asp:Label>. Fill out the details below to officially register as a life-saving organ donor.</p>
            </div>

            <div class="form_body_wrapper">
                
                <!-- Section 1: Personal Details -->
                <div class="form_section_card">
                    <div class="section_title_wrap">
                        <span class="step_num">1</span>
                        <h2>Personal Identification</h2>
                    </div>

                    <div class="form_row_grid three_col">
                        <div class="input_field_wrap">
                            <label>First Name <span class="req">*</span></label>
                            <asp:TextBox runat="server" ID="fst_nm_d" CssClass="form_input" placeholder="First Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rf_nm" runat="server" ControlToValidate="fst_nm_d" ErrorMessage="First name required" ValidationGroup="1" CssClass="val_error"></asp:RequiredFieldValidator>
                        </div>

                        <div class="input_field_wrap">
                            <label>Middle Name <span class="req">*</span></label>
                            <asp:TextBox runat="server" ID="mdl_nm_d" CssClass="form_input" placeholder="Middle Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rf_md" runat="server" ControlToValidate="mdl_nm_d" ErrorMessage="Middle name required" ValidationGroup="1" CssClass="val_error"></asp:RequiredFieldValidator>
                        </div>

                        <div class="input_field_wrap">
                            <label>Last Name <span class="req">*</span></label>
                            <asp:TextBox runat="server" ID="lst_nm_d" CssClass="form_input" placeholder="Last Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rf_LN" runat="server" ControlToValidate="lst_nm_d" ErrorMessage="Last name required" ValidationGroup="1" CssClass="val_error"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form_row_grid two_col">
                        <div class="input_field_wrap">
                            <label>Parent / Guardian Name <span class="req">*</span></label>
                            <asp:TextBox runat="server" ID="mo_fa_name" CssClass="form_input" placeholder="Father's / Mother's Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rf_md0" runat="server" ControlToValidate="mo_fa_name" ErrorMessage="Guardian name required" ValidationGroup="1" CssClass="val_error"></asp:RequiredFieldValidator>
                        </div>

                        <div class="input_field_wrap">
                            <label>Email Address <span class="req">*</span></label>
                            <asp:TextBox runat="server" ID="email" TextMode="Email" CssClass="form_input" placeholder="example@domain.com"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rf_md6" runat="server" ControlToValidate="email" ErrorMessage="Email required" ValidationGroup="1" CssClass="val_error"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form_row_grid four_col">
                        <div class="input_field_wrap">
                            <label>Date of Birth <span class="req">*</span></label>
                            <asp:TextBox runat="server" ID="dob" TextMode="Date" CssClass="form_input" OnTextChanged="dob_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rf_md7" runat="server" ControlToValidate="dob" ErrorMessage="DOB required" ValidationGroup="1" CssClass="val_error"></asp:RequiredFieldValidator>
                        </div>

                        <div class="input_field_wrap">
                            <label>Age <span class="req">*</span></label>
                            <asp:TextBox runat="server" ID="age" TextMode="Number" CssClass="form_input" placeholder="Age" OnTextChanged="age_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rf_md8" runat="server" ControlToValidate="age" ErrorMessage="Age required" ValidationGroup="1" CssClass="val_error"></asp:RequiredFieldValidator>
                        </div>

                        <div class="input_field_wrap">
                            <label>Gender <span class="req">*</span></label>
                            <asp:DropDownList ID="gender" runat="server" CssClass="form_select">
                                <asp:ListItem Selected="True">---Select---</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rf_md9" runat="server" ControlToValidate="gender" ErrorMessage="Gender required" InitialValue="---Select---" ValidationGroup="1" CssClass="val_error"></asp:RequiredFieldValidator>
                        </div>

                        <div class="input_field_wrap">
                            <label>Blood Group <span class="req">*</span></label>
                            <asp:DropDownList ID="bloodgrp" runat="server" CssClass="form_select">
                                <asp:ListItem Selected="True">---Select---</asp:ListItem>
                                <asp:ListItem>A+</asp:ListItem>
                                <asp:ListItem>A-</asp:ListItem>
                                <asp:ListItem>B+</asp:ListItem>
                                <asp:ListItem>B-</asp:ListItem>
                                <asp:ListItem>AB+</asp:ListItem>
                                <asp:ListItem>AB-</asp:ListItem>
                                <asp:ListItem>O+</asp:ListItem>
                                <asp:ListItem>O-</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rf_md10" runat="server" ControlToValidate="bloodgrp" ErrorMessage="Blood group required" InitialValue="---Select---" ValidationGroup="1" CssClass="val_error"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <!-- Section 2: Residential Address & Contact -->
                <div class="form_section_card">
                    <div class="section_title_wrap">
                        <span class="step_num">2</span>
                        <h2>Address & Employment</h2>
                    </div>

                    <div class="form_row_grid single_col">
                        <div class="input_field_wrap">
                            <label>Current Residential Address <span class="req">*</span></label>
                            <asp:TextBox runat="server" ID="address" TextMode="MultiLine" Rows="3" CssClass="form_textarea" placeholder="Complete Street Address, Flat / House No."></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rf_md1" runat="server" ControlToValidate="address" ErrorMessage="Address required" ValidationGroup="1" CssClass="val_error"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form_row_grid four_col">
                        <div class="input_field_wrap">
                            <label>City <span class="req">*</span></label>
                            <asp:TextBox runat="server" ID="city" CssClass="form_input" placeholder="City"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rf_md2" runat="server" ControlToValidate="city" ErrorMessage="City required" ValidationGroup="1" CssClass="val_error"></asp:RequiredFieldValidator>
                        </div>

                        <div class="input_field_wrap">
                            <label>District <span class="req">*</span></label>
                            <asp:TextBox runat="server" ID="district" CssClass="form_input" placeholder="District"></asp:TextBox>
                        </div>

                        <div class="input_field_wrap">
                            <label>State <span class="req">*</span></label>
                            <asp:TextBox runat="server" ID="state" CssClass="form_input" placeholder="State"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rf_md3" runat="server" ControlToValidate="state" ErrorMessage="State required" ValidationGroup="1" CssClass="val_error"></asp:RequiredFieldValidator>
                        </div>

                        <div class="input_field_wrap">
                            <label>Pincode <span class="req">*</span></label>
                            <asp:TextBox runat="server" ID="pincode" TextMode="Number" MaxLength="6" CssClass="form_input" placeholder="6-digit Pincode"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rf_md4" runat="server" ControlToValidate="pincode" ErrorMessage="Pincode required" ValidationGroup="1" CssClass="val_error"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form_row_grid two_col">
                        <div class="input_field_wrap">
                            <label>Mobile Number <span class="req">*</span></label>
                            <asp:TextBox runat="server" ID="mobile" TextMode="Number" CssClass="form_input" placeholder="10-digit Mobile Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rf_md5" runat="server" ControlToValidate="mobile" ErrorMessage="Mobile required" ValidationGroup="1" CssClass="val_error"></asp:RequiredFieldValidator>
                        </div>

                        <div class="input_field_wrap">
                            <label>Occupation</label>
                            <asp:DropDownList ID="occupation" runat="server" CssClass="form_select">
                                <asp:ListItem Selected="True">---Select---</asp:ListItem>
                                <asp:ListItem>Student</asp:ListItem>
                                <asp:ListItem>Business</asp:ListItem>
                                <asp:ListItem>Professional</asp:ListItem>
                                <asp:ListItem>Self Employed</asp:ListItem>
                                <asp:ListItem>Government Employee</asp:ListItem>
                                <asp:ListItem>Armed Forces</asp:ListItem>
                                <asp:ListItem>Retired</asp:ListItem>
                                <asp:ListItem>Homemaker</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>

                <!-- Section 3: Organs Pledged Selection -->
                <div class="form_section_card">
                    <div class="section_title_wrap">
                        <span class="step_num">3</span>
                        <h2>Organs & Tissues You Wish To Donate</h2>
                    </div>

                    <div class="organs_checkbox_wrapper">
                        <asp:CheckBoxList runat="server" ID="organs_cb" RepeatColumns="4" RepeatDirection="Horizontal" CssClass="modern_checkbox_list" OnSelectedIndexChanged="organs_cb_SelectedIndexChanged">
                            <asp:ListItem Value="all">ALL ORGANS & TISSUES</asp:ListItem>
                            <asp:ListItem>HEART</asp:ListItem>
                            <asp:ListItem>LUNGS</asp:ListItem>
                            <asp:ListItem>LIVER</asp:ListItem>
                            <asp:ListItem>KIDNEY</asp:ListItem>
                            <asp:ListItem>INTESTINE</asp:ListItem>
                            <asp:ListItem>PANCREAS</asp:ListItem>
                            <asp:ListItem>HANDS</asp:ListItem>
                            <asp:ListItem>CORNEA</asp:ListItem>
                            <asp:ListItem>BONES</asp:ListItem>
                            <asp:ListItem>SKIN</asp:ListItem>
                            <asp:ListItem>HEART VALVES</asp:ListItem>
                            <asp:ListItem>BLOOD STEM CELLS</asp:ListItem>
                        </asp:CheckBoxList>
                    </div>
                </div>

                <!-- Section 4: Emergency Contact & Referral -->
                <div class="form_section_card">
                    <div class="section_title_wrap">
                        <span class="step_num">4</span>
                        <h2>Emergency Contact Person</h2>
                    </div>

                    <div class="form_row_grid three_col">
                        <div class="input_field_wrap">
                            <label>Emergency Contact Name</label>
                            <asp:TextBox runat="server" ID="em_co_nm" CssClass="form_input" placeholder="Contact Full Name"></asp:TextBox>
                        </div>

                        <div class="input_field_wrap">
                            <label>Emergency Contact Number</label>
                            <asp:TextBox runat="server" ID="em_co_no" TextMode="Number" CssClass="form_input" placeholder="Mobile Number"></asp:TextBox>
                        </div>

                        <div class="input_field_wrap">
                            <label>Emergency Address</label>
                            <asp:TextBox runat="server" ID="em_add" CssClass="form_input" placeholder="Address"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form_row_grid two_col" style="margin-top: 15px;">
                        <div class="input_field_wrap">
                            <label>Where did you hear about us?</label>
                            <asp:DropDownList ID="hear_us" runat="server" CssClass="form_select">
                                <asp:ListItem Selected="True">--SELECT--</asp:ListItem>
                                <asp:ListItem>SOCIAL MEDIA</asp:ListItem>
                                <asp:ListItem>AWARENESS SESSION</asp:ListItem>
                                <asp:ListItem>FRIENDS & FAMILY</asp:ListItem>
                                <asp:ListItem>RADIO</asp:ListItem>
                                <asp:ListItem>OTHER</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="declaration_box">
                        <label class="check_declaration">
                            <asp:CheckBox ID="ind_cit" runat="server" />
                            <span>I declare that I am a citizen of India and above 18 years of age.</span>
                        </label>

                        <label class="check_declaration">
                            <asp:CheckBox ID="p_p" runat="server" />
                            <span>I agree to the <a href="PRIVACY_POLICY.aspx" target="_blank">Privacy Policy</a> and authorize Ishika Organization to maintain my donor pledge.</span>
                        </label>
                    </div>
                </div>

                <!-- Submit Button Wrap -->
                <div class="form_submit_wrap">
                    <asp:Button runat="server" ID="apply_donor" Text="SUBMIT DONOR PLEDGE" OnClick="apply_donor_Click" CssClass="btn_primary_submit" ValidationGroup="1" />
                </div>

            </div>
        </div>
    </form>
</body>
</html>
