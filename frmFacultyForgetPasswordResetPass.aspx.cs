using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        

    }




    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();

        String s = "update FacultyMisInfo  set EmpPass=@p2 where  EmpId=@p1";
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.Parameters.AddWithValue("@p1", Session["EId"]);
        cmd.Parameters.AddWithValue("@p2", txtForgotpwd.Text);

        cmd.ExecuteNonQuery();



        ClientScript.RegisterStartupScript(this.GetType(), "validation", "<script language='javascript'>alert('Password Reset Success');window.location.replace('Default.aspx');</script>");

      //  Response.Redirect("Default.aspx");



    }
}