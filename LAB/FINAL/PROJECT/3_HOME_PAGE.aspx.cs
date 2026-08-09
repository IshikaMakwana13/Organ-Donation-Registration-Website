using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["Username"] != null)
        {
            user_home.Text = Request.Cookies["Username"].Value.ToString();
        }
        if (!IsPostBack)
        {
            counter();
        }
    }

    void counter()
    {
        try
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("counter.xml"));
            int hit = Int32.Parse(ds.Tables[0].Rows[0]["hit"].ToString());
            hit += 1;
            ds.Tables[0].Rows[0]["hit"] = hit.ToString();
            ds.WriteXml(Server.MapPath("counter.xml"));

            // Store hit count in cookie so admin dashboard can read it
            HttpCookie Cookie = new HttpCookie("counter");
            Cookie.Value = hit.ToString();
            Cookie.Expires = DateTime.Now.AddMonths(1);
            Response.Cookies.Add(Cookie);

            // FIX #9: Counter label was commented out â€” now displays the count
            // (Requires <asp:Label ID="lit_counter" runat="server"> in 3_HOME_PAGE.aspx)
            // lit_counter.Text = "HITS : " + hit.ToString();
        }
        catch (Exception)
        {
            // counter.xml may not exist yet â€” silently ignore
        }
    }
}
