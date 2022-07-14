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

public partial class home1 : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Eid"] = "1";
        
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        SqlCommand cmd;
        con.Open();
        String a2 = "select * from FacultyMisInfo  where EmpId = @p1";
        cmd = new SqlCommand(a2, con);
        cmd.Parameters.AddWithValue("@p1", Session["Eid"].ToString());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            enid.Text = dt.Rows[0]["EmpId"].ToString();
            sname.Text = dt.Rows[0]["EmpName"].ToString();

            gender.Text = dt.Rows[0]["EmpGender"].ToString();
            des.Text = dt.Rows[0]["EmpDesignation"].ToString();
            department.Text = dt.Rows[0]["EmpDepartment"].ToString();
            Session["EDep"] = dt.Rows[0]["EmpDepartment"].ToString();
            cno.Text = dt.Rows[0]["EmpMobileNo"].ToString();
            photo.ImageUrl = dt.Rows[0]["EmpImage"].ToString();

            con.Close();

        }


        findDocUpload();
        FindFacultyTask();

    }

    private void FindFacultyTask()
    {
       
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        SqlCommand cmd;
        con.Open();
        string a2 = "select  * FROM FacultyAssignTaskInfo  where FacultyId=@p1 ";
        cmd = new SqlCommand(a2, con);
        cmd.Parameters.AddWithValue("@p1", Session["Eid"]);
        
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
           Session["Ftask"]= dt.Rows[0]["TaskName"].ToString();
        }
        else
        {
            Session["Ftask"] = "";

        }

    }

    private void findDocUpload()
    {
        
        if (!string.IsNullOrEmpty(Session["Ftask"] as string))
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
            SqlCommand cmd;
            con.Open();
            string a2 = "select  * FROM StudentPuDocsInfo  where Department=@p1 and DocUnderTask=@p2  ";
            cmd = new SqlCommand(a2, con);
            cmd.Parameters.AddWithValue("@p1", Session["EDep"]);
            cmd.Parameters.AddWithValue("@p2", Session["Ftask"]);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                lblDoc.Text = dt.Rows.Count.ToString();
            }

            else
            {
                lblDoc.Text = "0";
            }

        }

        else

        {
            lblDoc.Text = "No Permission Assign For View Student Document";
        }

    }


    protected void btnDoc_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmFacultyDownloadPUDocument.aspx");
    }
}
