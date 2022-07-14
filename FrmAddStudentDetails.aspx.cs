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

        if (ImageUpload1.HasFile)
        {
           str = ImageUpload1.FileName;


            ImageUpload1.PostedFile.SaveAs(Server.MapPath("~/StudentImage/" + str));
          str = "~/StudentImage/" + str.ToString();

        }



       SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
            con.Open();
            SqlCommand cmd;

            string a = "INSERT INTO StudentMisInfo values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10)";
            cmd = new SqlCommand(a, con);
            cmd.Parameters.AddWithValue("@p1", txtEno.Text);
            cmd.Parameters.AddWithValue("@p2", txtSName.Text);
            cmd.Parameters.AddWithValue("@p3", txtDob.Text);
            cmd.Parameters.AddWithValue("@p4", ddlGender.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@p5", ddlCollege.SelectedValue.ToString());

            cmd.Parameters.AddWithValue("@p6",ddlBranch.SelectedValue.ToString());

            cmd.Parameters.AddWithValue("@p7", txtMno.Text);
            cmd.Parameters.AddWithValue("@p8", txtMno.Text);
        
            cmd.Parameters.AddWithValue("@p9", str);
            cmd.Parameters.AddWithValue("@p10", ddlsem.SelectedValue.ToString());
            cmd.ExecuteNonQuery();
        con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
"alert('Student Details Add Success'); window.location='" +
Request.ApplicationPath + "FrmAddStudentDetails.aspx';", true);
           

     
    }
    
    
}