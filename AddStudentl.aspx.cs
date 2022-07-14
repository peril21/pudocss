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

public partial class PatientRegistration : System.Web.UI.Page
{
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (addimage.HasFile)
        {
           str = addimage.FileName;


           addimage.PostedFile.SaveAs(Server.MapPath("~/StudentImage/" + str));
           str = "~/StudentImage/" + str.ToString();

        }



      SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db1"].ToString());
            con.Open();
            SqlCommand cmd;

            string a = "INSERT INTO StudentInfo values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8)";
            cmd = new SqlCommand(a, con);
            cmd.Parameters.AddWithValue("@p1", eno.Text);
            cmd.Parameters.AddWithValue("@p2", fname.Text);
            cmd.Parameters.AddWithValue("@p3", eno.Text);
            cmd.Parameters.AddWithValue("@p4", gender.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@p5",branch.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@p6", sem.SelectedValue.ToString());

            cmd.Parameters.AddWithValue("@p7", college.SelectedValue.ToString());

            cmd.Parameters.AddWithValue("@p8", str);
           

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("AdminHome.aspx");

      
     
    }
    
    
}