using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class MSG_PAGE : System.Web.UI.Page
{
    SqlCommand cmd;
    string q;
    SqlConnection con;


    protected void Page_Load(object sender, EventArgs e)
    {
        // FIX #14: Added null checks â€” page used to crash if cookies were missing
        if (Request.Cookies["Username"] != null)
        {
            usrname_msg.Text = Request.Cookies["Username"].Value.ToString();
        }
        if (Request.Cookies["Email"] != null)
        {
            usremail_msg.Text = Request.Cookies["Email"].Value.ToString();
        }

        try
        {
            // FIX #2: Use OrganDB from Web.config â€” was incorrectly pointing to E:\LAB\
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["OrganDB"].ConnectionString);
            con.Open();
        }
        catch (Exception)
        {
            Response.Redirect("Error_500.aspx");
        }
    }

    protected void msgbtn_Click(object sender, EventArgs e)
    {
        try
        {
            q = "insert into msg values ('" + usrname_msg.Text + "','" + usremail_msg.Text + "','" + usrmsg.Text + "') ";
            cmd = new SqlCommand(q, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('THANKS FOR THE MESSAGE ! ');</script>");
        }
        catch (Exception)
        {
            Response.Redirect("Error_404.aspx");
        }
    }

    protected void cancelbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("3_HOME_PAGE.aspx");
    }
}
