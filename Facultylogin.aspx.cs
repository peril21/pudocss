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

public partial class SecureNo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
 
    protected void btnLogin_Click(object sender, EventArgs e)
    {


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();

        String s = "select * from FacultyMisInfo  where EmpId=@p1 OR EmpMobileNo=@p1 and EmpPass=@p2 ";
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.Parameters.AddWithValue("@p1", txtUsername.Text);
        cmd.Parameters.AddWithValue("@p2", txtPassword.Text);

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {

            Session["EId"] = dt.Rows[0]["EmpId"].ToString();

            Session["EDepartment"] = dt.Rows[0]["EmpDepartment"].ToString();
            Response.Redirect("PrincipalHome.aspx");

        }
        else
        {
            string message = "Error: Invalid Id Or Password";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
        }
        con.Close();

    }
}