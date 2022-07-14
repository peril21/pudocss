using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class VehicleMaster_VehicleDoc1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fetchDownload();

    }
    
   
    private void fetchDownload()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from FacultyPuDocsInfo   where FacultyId=@p1", con);

        cmd.Parameters.AddWithValue("@p1", Session["Eid"]);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
   
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Image1.Visible = true;
            Image1.ImageUrl = dt.Rows[0]["DocPath"].ToString();
            HyperLink1.NavigateUrl = dt.Rows[0]["DocPath"].ToString();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else
        {
           
        }
        con.Close(); 
    }
   
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
        Image1.Visible = true;

        Image1.ImageUrl = row.Cells[5].Text.ToString();

        HyperLink1.NavigateUrl = row.Cells[5].Text.ToString();
    }
   
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        e.Row.Cells[5].Visible = false;
    }
}