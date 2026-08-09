using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class APPLY_AS_DONOR : System.Web.UI.Page
{
    SqlCommand cmd;
    string q;
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        // Login guard — redirect to sign in if cookie is missing
        if (Request.Cookies["Username"] == null)
        {
            Response.Redirect("1_SIGN_IN.aspx");
            return;
        }

        user_name_c.Text = Request.Cookies["Username"].Value.ToString();

        try
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["OrganDB"].ConnectionString);
            con.Open();
        }
        catch (Exception)
        {
            Response.Redirect("Error_404.aspx");
        }
    }

    protected void apply_donor_Click(object sender, EventArgs e)
    {
        try
        {
            // Collect selected organ checkboxes into comma-separated string
            String str = "";
            for (int i = 0; i <= organs_cb.Items.Count - 1; i++)
            {
                if (organs_cb.Items[i].Selected)
                {
                    if (str == "")
                        str = organs_cb.Items[i].Text;
                    else
                        str += "," + organs_cb.Items[i].Text;
                }
            }

            q = "insert into organdonor values ('" + fst_nm_d.Text + "' , '" + mdl_nm_d.Text + "' , '" + lst_nm_d.Text + "' , '" + mo_fa_name.Text + "' , '" + address.Text + "' , '" + city.Text + "' , '" + district.Text + "' , '" + state.Text + "' , '" + pincode.Text + "' , '" + mobile.Text + "' , '" + occupation.SelectedItem.ToString() + "' , '" + email.Text + "' , '" + dob.Text + "' , '" + age.Text + "' , '" + gender.SelectedItem.ToString() + "' , '" + bloodgrp.SelectedItem.ToString() + "' , 'N/A' , 'N/A' , '" + str + "' , '" + em_co_nm.Text + "' , '" + em_co_no.Text + "' , '" + em_add.Text + "' , '" + hear_us.SelectedItem.ToString() + "' ) ";
            cmd = new SqlCommand(q, con);
            cmd.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "alertSuccess", "alert('SUCCESSFULLY SUBMITTED !'); window.location.href='3_HOME_PAGE.aspx';", true);
        }
        catch (Exception)
        {
            Response.Redirect("Error_404.aspx");
        }
    }

    protected void organs_cb_SelectedIndexChanged(object sender, EventArgs e) { }
    protected void age_TextChanged(object sender, EventArgs e) { }

    protected void dob_TextChanged(object sender, EventArgs e)
    {
        DateTime birthDate;
        if (DateTime.TryParse(dob.Text, out birthDate))
        {
            int calculatedAge = DateTime.Today.Year - birthDate.Year;
            if (birthDate.Date > DateTime.Today.AddYears(-calculatedAge)) calculatedAge--;
            if (calculatedAge >= 0 && calculatedAge <= 125)
            {
                age.Text = calculatedAge.ToString();
            }
        }
    }
}
