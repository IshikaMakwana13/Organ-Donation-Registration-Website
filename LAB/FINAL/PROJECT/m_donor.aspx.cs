using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class m_donor : System.Web.UI.Page
{
    SqlCommand cmd;
    string q;
    SqlConnection con;

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
        }
    }

    // FIX: Remove DataSourceID when setting DataSource programmatically during search
    protected void delete_btn_Click(object sender, EventArgs e)
    {
        try
        {
            string whereClause = "";

            if (city.SelectedValue != "<--CITY__>")
            whereClause = "d_city = @city";
            else if (state.SelectedValue != "<--STATE-->")
            whereClause = "d_state = @state";
            else if (organ.SelectedValue != "<--ORGAN-->")
            whereClause = "organ_chb LIKE @organ";
            else if (gender.SelectedValue != "<--GENDER-->")
            whereClause = "d_gender = @gender";

            if (!string.IsNullOrEmpty(admin_age_txt.Text))
            whereClause = string.IsNullOrEmpty(whereClause)
            ? "d_age = @age"
            : whereClause + " AND d_age = @age";

            q = string.IsNullOrEmpty(whereClause)
            ? "SELECT * FROM organdonor"
            : "SELECT * FROM organdonor WHERE " + whereClause;

            SqlCommand searchCmd = new SqlCommand(q, con);

            if (q.Contains("@city"))   searchCmd.Parameters.AddWithValue("@city",  city.SelectedValue);
            if (q.Contains("@state"))  searchCmd.Parameters.AddWithValue("@state", state.SelectedValue);
            if (q.Contains("@organ"))  searchCmd.Parameters.AddWithValue("@organ", "%" + organ.SelectedValue + "%");
            if (q.Contains("@gender")) searchCmd.Parameters.AddWithValue("@gender", gender.SelectedValue);
            if (q.Contains("@age"))    searchCmd.Parameters.AddWithValue("@age",   admin_age_txt.Text);

            SqlDataAdapter sda = new SqlDataAdapter(searchCmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            // FIX: Detach DataSourceID before setting DataSource to avoid InvalidOperationException
            GridView1.DataSourceID = null;
            GridView1.DataSource = dt;
            GridView1.DataBind();

            if (dt.Rows.Count == 0)
            {
                Response.Write("<script>alert('NO DATA FOUND !');</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Search error: " + ex.Message.Replace("'", "") + "');</script>");
        }
    }
}
