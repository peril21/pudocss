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
        string a2 = "select  * FROM StudentPuDocsInfo  where Department=@p1 and DocUnderTask=@p2  ";
        SqlCommand cmd;
        cmd = new SqlCommand(a2, con);
        cmd.Parameters.AddWithValue("@p1", Session["EDep"]);
        cmd.Parameters.AddWithValue("@p2", Session["Ftask"]);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
   
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
           
            //Image1.ImageUrl = dt.Rows[0]["StudentImage"].ToString();
          //  HyperLink1.NavigateUrl = dt.Rows[0]["StudentImage"].ToString();
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
        e.Row.Cells[1].Visible = false;
    }
}