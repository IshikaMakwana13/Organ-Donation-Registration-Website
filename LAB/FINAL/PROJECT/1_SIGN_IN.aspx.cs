using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class _11_SIGN_IN : System.Web.UI.Page
{

    SqlCommand cmd;
    string q;
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            // FIX #1: Use OrganDB connection string from Web.config (|DataDirectory| path)
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["OrganDB"].ConnectionString);
            con.Open();

        }
        catch (Exception) {
            Response.Redirect("Error_500.aspx");
        }


    }


    protected void sign_up_btn_Click(object sender, EventArgs e)
    {

        try
        {
            q = "insert into signup values ('" + username.Text + "','" + email.Text + "','" + password.Text + "') ";
            cmd = new SqlCommand(q, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('SIGN-UP SUCCESSFUL ! ');</script>");
        }

        catch (Exception)
        {
            Response.Redirect("Error_404.aspx");
        }


    }








    protected void btn_sigin_Click(object sender, EventArgs e)
    {

        try
        {
            // Admin Authentication Check
            string uname = name_signin.Text.Trim();
            string pword = passwrd.Text.Trim();
            string mail = email_usr.Text.Trim();

            if ((uname.Equals("ISHIKA", StringComparison.OrdinalIgnoreCase) || uname.Equals("admin", StringComparison.OrdinalIgnoreCase) || mail.Equals("admin@gmail.com", StringComparison.OrdinalIgnoreCase) || mail.Equals("ishika@gmail.com", StringComparison.OrdinalIgnoreCase))
                && (pword.Equals("MAKWANA", StringComparison.OrdinalIgnoreCase) || pword.Equals("admin", StringComparison.OrdinalIgnoreCase) || pword.Equals("123456", StringComparison.OrdinalIgnoreCase)))
            {
                HttpCookie cookieUser = new HttpCookie("Username", "ISHIKA");
                cookieUser.Expires = DateTime.Now.AddHours(2);
                Response.Cookies.Add(cookieUser);

                Response.Redirect("m_loader.aspx");
                return;
            }

            // Normal user sign-in with parameterized query
            SqlCommand cmd = new SqlCommand("select * from signup where email=@email and password=@password", con);
            cmd.Parameters.AddWithValue("@email", email_usr.Text);
            cmd.Parameters.AddWithValue("@password", passwrd.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                // Store Username + Email cookies (both needed for MSG_PAGE)
                HttpCookie cookieUser = new HttpCookie("Username");
                HttpCookie cookieEmail = new HttpCookie("Email");

                cookieUser.Value = name_signin.Text;
                cookieEmail.Value = email_usr.Text;

                cookieUser.Expires = DateTime.Now.AddHours(1);
                cookieEmail.Expires = DateTime.Now.AddHours(1);

                Response.Cookies.Add(cookieUser);
                Response.Cookies.Add(cookieEmail);
                Response.Write("<script>alert('SIGNED-IN SUCCESSFULLY  ! ');</script>");
                Response.Redirect("3_HOME_PAGE.aspx");
            }

            else
            {
                Response.Write("<script>alert('INCORRECT DETAILS ! ');</script>");

            }


        }

        catch (Exception)
        {
            Response.Write("<script>alert('LOGIN ERROR â€” please try again.');</script>");
        }


    }

}
