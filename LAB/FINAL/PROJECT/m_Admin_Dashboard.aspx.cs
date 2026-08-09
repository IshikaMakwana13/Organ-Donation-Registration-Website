using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Admin_Dashboard : System.Web.UI.Page
{
    string q;
    // FIX #1: Use ConfigurationManager instead of hardcoded path
    SqlConnection con;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["OrganDB"].ConnectionString);
            con.Open();
        }
        catch (Exception)
        {
            Response.Redirect("Error_500.aspx");
            return;
        }

        if (!IsPostBack)
        {
            // FIX #3: Added null check for counter cookie â€” crashes if cookie doesn't exist yet
            if (Request.Cookies["counter"] != null)
            {
                counter_lbl.Text = Request.Cookies["counter"].Value.ToString();
            }
            else
            {
                counter_lbl.Text = "0";
            }

            // FIX #11: Removed duplicate calls â€” each method called exactly once
            totalsignup();
            msg();
            organ();
            patient();
        }
    }

    void totalsignup()
    {
        q = "SELECT * FROM signup";
        SqlCommand cmd = new SqlCommand(q, con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        ttl_signup.Text = ds.Tables[0].Rows.Count.ToString();
    }

    void msg()
    {
        q = "SELECT * FROM msg";
        SqlCommand cmd = new SqlCommand(q, con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        ttlmsg.Text = ds.Tables[0].Rows.Count.ToString();
    }

    void organ()
    {
        q = "SELECT * FROM organdonor";
        SqlCommand cmd = new SqlCommand(q, con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        totaldonor.Text = ds.Tables[0].Rows.Count.ToString();
    }

    void patient()
    {
        q = "SELECT * FROM organpatient";
        SqlCommand cmd = new SqlCommand(q, con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        totalpatient.Text = ds.Tables[0].Rows.Count.ToString();
    }
}
