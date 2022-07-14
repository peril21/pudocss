using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class ClerkHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        //SqlCommand cmd;
        //con.Open();
        //String a2 = "select * from FacultyMisInfo  where EmpId = @p1";
        //cmd = new SqlCommand(a2, con);
        //cmd.Parameters.AddWithValue("@p1", Session["Eid"].ToString());
        //SqlDataAdapter da = new SqlDataAdapter(cmd);
        //DataTable dt = new DataTable();
        //da.Fill(dt);

        //if (dt.Rows.Count > 0)
        //{
        //    enid.Text = dt.Rows[0]["EmpId"].ToString();
        //    sname.Text = dt.Rows[0]["EmpName"].ToString();

        //    gender.Text = dt.Rows[0]["EmpGender"].ToString();
        //    des.Text = dt.Rows[0]["EmpDesignation"].ToString();
        //    department.Text = dt.Rows[0]["EmpDepartment"].ToString();
        //    cno.Text = dt.Rows[0]["EmpMobileNo"].ToString();
        //    photo.ImageUrl = dt.Rows[0]["EmpImg"].ToString();

        //    con.Close();


       // }
    }
}