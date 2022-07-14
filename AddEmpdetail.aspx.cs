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
        Random r = new Random();
        txtEid.Text = r.Next(1111, 9999).ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (newaddressUpload1.HasFile)
        {
            str = newaddressUpload1.FileName;


            newaddressUpload1.PostedFile.SaveAs(Server.MapPath("~/EmpImage/" + str));
            str = "~/EmpImage/" + str.ToString();

        }


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "INSERT INTO FacultyMisInfo values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10)";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", txtEid.Text);
        cmd.Parameters.AddWithValue("@p2", txtFname.Text);
        cmd.Parameters.AddWithValue("@p3", txtDob.Text);
        cmd.Parameters.AddWithValue("@p4", txtPass.Text);
        cmd.Parameters.AddWithValue("@p5", ddlGender.SelectedValue.ToString());

        cmd.Parameters.AddWithValue("@p6", ddlCollege.SelectedValue.ToString());

        cmd.Parameters.AddWithValue("@p7", ddlDepartment.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@p8", ddlDss.SelectedValue.ToString()); ;

        cmd.Parameters.AddWithValue("@p9", txtMobileno.Text);

        cmd.Parameters.AddWithValue("@p10", str);
        cmd.ExecuteNonQuery();

        ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
"alert('Faculty Details Add Success'); window.location='" +
Request.ApplicationPath + "FrmAddStaffDetails.aspx';", true);


        con.Close();





    }


}