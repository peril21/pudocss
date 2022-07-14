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
       // digit.Text = Session["AadharNo"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (newaddressUpload1.HasFile)
        {
           str = newaddressUpload1.FileName;


            newaddressUpload1.PostedFile.SaveAs(Server.MapPath("~/DocumentImage/" + str));
          str = "~/DocumentImage/" + str.ToString();

        }



       try
      {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
            con.Open();
            SqlCommand cmd;

            string a = "INSERT INTO  SecureDocumentInfo values(@p1,@p2,@p3)";
            cmd = new SqlCommand(a, con);
            cmd.Parameters.AddWithValue("@p1", digit.Text);
            
            cmd.Parameters.AddWithValue("@p2", DropDownList1.SelectedValue.ToString());
          
            cmd.Parameters.AddWithValue("@p3", str);

            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('DocumentUpload')</script>");
          

            con.Close();
      }
        catch (Exception e1)
        {
           string message = "Upload Error";
            ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + message + "');", true);
        }
    }
    
    
}