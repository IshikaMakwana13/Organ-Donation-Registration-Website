using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class APPLY_AS_PATIENT : System.Web.UI.Page
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

    protected void btn_p_Click(object sender, EventArgs e)
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

            q = "insert into organpatient values('" + name.Text + "' , '" + middlename.Text + "' , '" + lastnm.Text + "' , '" + txtagep.Text + "' , '" + dob_p.Text + "' , '" + gender_P.SelectedItem.ToString() + "' , '" + bloodgrp.SelectedItem.ToString() + "' , 'N/A' , 'N/A' , '" + address_p.Text + "' , '" + email_p.Text + "' , '" + cityp.Text + "' , '" + disp.Text + "' , '" + statep.Text + "' , '" + pincodep.Text + "' , '" + mobilep.Text + "' , '" + occupation_p.SelectedItem.ToString() + "' , '" + str + "' , '" + emgconmp.Text + "' , '" + emgconum.Text + "' , '" + emgcoadd.Text + "' , '" + hear_us_p.Text + "')";
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

    protected void dob_p_TextChanged(object sender, EventArgs e)
    {
        DateTime birthDate;
        if (DateTime.TryParse(dob_p.Text, out birthDate))
        {
            int calculatedAge = DateTime.Today.Year - birthDate.Year;
            if (birthDate.Date > DateTime.Today.AddYears(-calculatedAge)) calculatedAge--;
            if (calculatedAge >= 0 && calculatedAge <= 125)
            {
                txtagep.Text = calculatedAge.ToString();
            }
        }
    }
}