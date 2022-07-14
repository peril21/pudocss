using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Configuration;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;
using System;
using System.Collections;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Globalization;


public partial class EnquiryStatus : System.Web.UI.Page
{
    String Task, FId,Name;

    String DId, Dtitle, UploadDate, DocTask, Remark;
    DataTable dt1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
           dt1 = new DataTable();
            dt1.Columns.AddRange(new DataColumn[12] { 
                new DataColumn("EmpID", typeof(string)),
                new DataColumn("EmpName", typeof(string)),
                new DataColumn("Gender",typeof(string)),
             new DataColumn("College",typeof(string)),
              new DataColumn("Department",typeof(string)),
               new DataColumn("Designation",typeof(string)),
                new DataColumn("MobileNo",typeof(string)),
                 new DataColumn("DocumentId",typeof(string)),
                 new DataColumn("DocumentTitle",typeof(string)),
                 new DataColumn("UploadDate",typeof(string)),
                 new DataColumn("Task",typeof(string)),
                 new DataColumn("Remark",typeof(string)),



            });

        }
        if (!IsPostBack)
        {
            FindRecord();
        }
    }

    private void FindRecord()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();

        String s = "select * from FacultyPuDocsInfo ";
      
        
            SqlCommand cmd = new SqlCommand(s, con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
            DId = reader[0].ToString();
            Dtitle = reader[1].ToString();
            UploadDate = reader[2].ToString();
            DocTask = reader[3].ToString();
            Remark = reader[5].ToString();

            FId = reader[6].ToString();
            callFind();
            }
        con.Close();
        GridView1.DataSource = dt1;
        GridView1.DataBind();

    }

    private void callFind()
    {
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con1.Open();

        String s = "select * from FacultyMisInfo  where EmpId=@p1 and EmpCollege=@p2";
        SqlCommand cmd = new SqlCommand(s, con1);
        cmd.Parameters.AddWithValue("@p1", FId);

        cmd.Parameters.AddWithValue("@p2", Session["FC"]);

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            DataRow dr1 = dt1.NewRow();
            dr1 = dt1.NewRow();
            dr1["EmpID"] = dt.Rows[0]["EmpId"].ToString();
            dr1["EmpName"] = dt.Rows[0]["EmpName"].ToString();
            dr1["Gender"] = dt.Rows[0]["EmpGender"].ToString();
            dr1["College"] = dt.Rows[0]["EmpCollege"].ToString();
            dr1["Department"] = dt.Rows[0]["EmpDepartment"].ToString();
            dr1["Designation"] = dt.Rows[0]["EmpDesignation"].ToString();
            dr1["MobileNo"] = dt.Rows[0]["EmpMobileNo"].ToString();
            dr1["DocumentId"] = DId;
            dr1["DocumentTitle"] = Dtitle;
            dr1["UploadDate"] = UploadDate;
            dr1["Task"] = DocTask;
            dr1["Remark"] = Remark;
            dt1.Rows.Add(dr1);
           

        }


        con1.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.ClearContent();
        Response.ClearHeaders();
        Response.Charset = "";
        string FileName = "AllFacultyAchivementRecordReport" + ".xls";
        StringWriter strwritter = new StringWriter();
        HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/vnd.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        GridView1.GridLines = GridLines.Both;
        GridView1.HeaderStyle.Font.Bold = true;
        GridView1.RenderControl(htmltextwrtter);
        Response.Write(strwritter.ToString());
        Response.End();
        Response.Clear();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        // controller   
    }



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;

        Session["pd"] = (row.Cells[8].Text.ToString());

        Response.Redirect("PDownloadFacultyDoc.aspx");
    }
}