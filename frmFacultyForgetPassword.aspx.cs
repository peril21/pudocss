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
        if (txtForgotpwd.Text == "")
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Enter MobileNo')</script>");
        }



        else
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();

            String s = "select * from FacultyMisInfo  where  EmpMobileNo=@p1";
            SqlCommand cmd = new SqlCommand(s, con);
            cmd.Parameters.AddWithValue("@p1", txtForgotpwd.Text);


            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                Session["EId"] = dt.Rows[0]["EmpId"].ToString();
                Session["EDep"] = dt.Rows[0]["EmpDepartment"].ToString();

                Random r = new Random();
                Session["OTP"] = r.Next(0000, 9999);
                Response.Redirect("frmFacultyForgetPasswordOtp.aspx");

            }

            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid MobileNo')</script>");
            }
        }
    }

}