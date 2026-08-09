using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class _4_DONOR : System.Web.UI.Page
{
    SqlCommand cmd;
    string q;
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["Username"] != null)
        {
            donate_user.Text = Request.Cookies["Username"].Value.ToString();
        }
        try
        {
            // FIX #1: Use OrganDB from Web.config
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["OrganDB"].ConnectionString);
            con.Open();
        }
        catch (Exception)
        {
            Response.Redirect("Error_404.aspx");
        }
    }

    // FIX #10: Parameterized query â€” was vulnerable to SQL injection via string concatenation
    protected void search_btn_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand searchCmd = new SqlCommand("SELECT * FROM organdonor WHERE d_city LIKE @city", con);
            searchCmd.Parameters.AddWithValue("@city", srh.Text + "%");
            SqlDataAdapter sda = new SqlDataAdapter(searchCmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            dgv.DataSource = dt;
            dgv.DataBind();

            if (dt.Rows.Count == 0)
            Response.Write("<script>alert('NO DATA FOUND !');</script>");
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }

    // FIX #10: Parameterized query
    protected void search_btn_Click_state(object sender, EventArgs e)
    {
        try
        {
            SqlCommand searchCmd = new SqlCommand("SELECT * FROM organdonor WHERE d_state LIKE @state", con);
            searchCmd.Parameters.AddWithValue("@state", state.Text + "%");
            SqlDataAdapter sda = new SqlDataAdapter(searchCmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            dgv.DataSource = dt;
            dgv.DataBind();

            if (dt.Rows.Count == 0)
            Response.Write("<script>alert('NO DATA FOUND !');</script>");
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }

    // FIX #10: Parameterized query
    protected void search_btn_Click_organ(object sender, EventArgs e)
    {
        try
        {
            SqlCommand searchCmd = new SqlCommand("SELECT * FROM organdonor WHERE organ_chb LIKE @organ", con);
            searchCmd.Parameters.AddWithValue("@organ", organ.Text + "%");
            SqlDataAdapter sda = new SqlDataAdapter(searchCmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            dgv.DataSource = dt;
            dgv.DataBind();

            if (dt.Rows.Count == 0)
            Response.Write("<script>alert('NO DATA FOUND !');</script>");
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }

    // FIX #8: Was using organ.Text instead of gneder.Text â€” wrong variable!
    // FIX #10: Also parameterized this query
    protected void search_btn_Click_gender(object sender, EventArgs e)
    {
        try
        {
            SqlCommand searchCmd = new SqlCommand("SELECT * FROM organdonor WHERE d_gender LIKE @gender", con);
            searchCmd.Parameters.AddWithValue("@gender", gneder.Text + "%");
            SqlDataAdapter sda = new SqlDataAdapter(searchCmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            dgv.DataSource = dt;
            dgv.DataBind();

            if (dt.Rows.Count == 0)
            Response.Write("<script>alert('NO DATA FOUND !');</script>");
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }
}
