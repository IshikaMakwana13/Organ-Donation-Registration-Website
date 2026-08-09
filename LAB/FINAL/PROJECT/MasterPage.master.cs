using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DateTime dt = DateTime.Now;
            date_lbl.Text = dt.ToString("dddd, MMMM dd, yyyy  hh:mm:ss tt");
        }
    }
}
