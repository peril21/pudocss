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
        SqlCommand cmd = new SqlCommand("select * from EventRequestInfo where UploadById=@p1  ", con);
        cmd.Parameters.AddWithValue("@p1", Session["id"]);
    
        SqlDataAdapter da = new SqlDataAdapter(cmd);
   
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            
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

      

        String Id = row.Cells[1].Text.ToString();
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Selected DocumentUpload Data Deleted " + Id + "')</script>");

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Delete from EventRequestInfo where UploadById=@p1 and RequestId=@p2 ", con);
        cmd.Parameters.AddWithValue("@p1", Session["id"]);
        cmd.Parameters.AddWithValue("@p2", Id);
        cmd.ExecuteNonQuery();
        con.Close();
        fetchDownload();


    }
   
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
       // e.Row.Cells[4].Visible = false;
    }
}