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
    string str,Taskid,Empid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            LoadTask();
            LoadFaculty();

        }
    }

    private void LoadFaculty()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        SqlCommand cmd;
        con.Open();
        String a2 = "select * FROM FacultyMisInfo Order By EmpName";
        cmd = new SqlCommand(a2, con);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {

            ddlFaculty.DataSource = dt;
            ddlFaculty.DataTextField = "EmpName";
            ddlFaculty.DataValueField = "EmpName";
            ddlFaculty.DataBind();
        }

        else
        {
            ddlFaculty.DataTextField = "No Record Found";
            ddlFaculty.DataValueField = "No Record Found";
            ddlFaculty.DataBind();
        }
    }

    private void LoadTask()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        SqlCommand cmd;
        con.Open();
      String  a2 = "select TaskName FROM FacultyTaskInfo Order By TaskName";
        cmd = new SqlCommand(a2, con);
       
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            ddlTask.DataSource = dt;
            ddlTask.DataTextField = "TaskName";
            ddlTask.DataValueField = "TaskName";
            ddlTask.DataBind();
        }

        else
        {
            ddlTask.DataTextField = "No Record Found";
            ddlTask.DataValueField = "No Record Found";
            ddlTask.DataBind();
        }
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
    SqlCommand cmd;
    protected void Button1_Click(object sender, EventArgs e)
    {
        FindTid();
        FindEid();
      
           con.Open();
            String a2 = "select * FROM FacultyAssignTaskInfo where FacultyName=@p1";
            cmd = new SqlCommand(a2, con);
            cmd.Parameters.AddWithValue("@p1", ddlFaculty.SelectedValue.ToString());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
            string message = "Task Already Assign To Faculty";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('" + message + "');", true);
         
            }

            else
            {
              
                string a = "INSERT INTO FacultyAssignTaskInfo values(@p1,@p2,@p3,@p4)";
                cmd = new SqlCommand(a, con);
                cmd.Parameters.AddWithValue("@p1", Taskid);
                cmd.Parameters.AddWithValue("@p2", ddlTask.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@p3", Empid);
                cmd.Parameters.AddWithValue("@p4", ddlFaculty.SelectedValue.ToString()); ;
            cmd.ExecuteNonQuery();
                string message = "Faculty Task Details Add";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('" + message + "');", true);
                //Response.Redirect("FrmAssignTask.aspx");

              
            }

        con.Close();
    }

    private void FindTid()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        SqlCommand cmd;
        con.Open();
        String a2 = "select TaskId FROM FacultyTaskInfo Where TaskName=@p1 Order By TaskName";
        cmd = new SqlCommand(a2, con);
        cmd.Parameters.AddWithValue ("@p1", ddlTask.SelectedValue.ToString());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            Taskid= dt.Rows[0]["TaskId"].ToString();
        }

        con.Close();

    }

    private void FindEid()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        SqlCommand cmd;
        con.Open();
        String a2 = "select * FROM FacultyMisInfo where EmpName=@p1";
        cmd = new SqlCommand(a2, con); 
        cmd.Parameters.AddWithValue("@p1", ddlFaculty.SelectedValue.ToString());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
           Empid = dt.Rows[0]["EmpId"].ToString();
        }

        con.Close();

    }
}