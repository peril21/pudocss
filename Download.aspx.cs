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

public partial class Career : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    string id, year, name;
    string str, Image;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "select * from ResumeInfo where Rid=@p1" ;
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", Session["ID"].ToString());

          SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();



        da.Fill(dt);




        if (dt.Rows.Count > 0)
        {
            Eid.Text = Session["ID"].ToString();
            datetime.Text = dt.Rows[0]["Rdate"].ToString();
            fullname.Text = dt.Rows[0]["Fullname"].ToString();
            Email.Text = dt.Rows[0]["Email"].ToString();
            gender.Text = dt.Rows[0]["Gender"].ToString();
            dob.Text = dt.Rows[0]["Gender"].ToString();
            cno.Text = dt.Rows[0]["ContactNo"].ToString();
            address.Text = dt.Rows[0]["Address"].ToString();
            city.Text = dt.Rows[0]["City"].ToString();
            pincode.Text = dt.Rows[0]["Pincode"].ToString();
            state.Text = dt.Rows[0]["State"].ToString();
            country.Text = dt.Rows[0]["Country"].ToString();
            Industry.Text = dt.Rows[0]["Industry"].ToString();
            funarea.Text = dt.Rows[0]["FunctionalArea"].ToString();
            keyskill.Text = dt.Rows[0]["KeySkill"].ToString();
            work.Text = dt.Rows[0]["WorkExp"].ToString();
            salary.Text = dt.Rows[0]["Salary"].ToString();
            bg.Text = dt.Rows[0]["BGraduation"].ToString();
            gpercentage.Text = dt.Rows[0]["Bpercent"].ToString();
            pg.Text = dt.Rows[0]["PGraduation"].ToString();
            postpercentage.Text = dt.Rows[0]["Ppercentage"].ToString();
            phd.Text = dt.Rows[0]["Phd"].ToString();

            HyperLink2.NavigateUrl = dt.Rows[0]["ResumePath"].ToString();

        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('No Record Found');window.location.replace('PrincipalHome.aspx');</script>");
        }
        con.Close();



     
    }
   
}