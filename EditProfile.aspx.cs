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

public partial class Registration : System.Web.UI.Page
{
  string a ;
    protected void Page_Load(object sender, EventArgs e)
    {
      


        
          //  SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
          //  con.Open();
          //  SqlCommand cmd = new SqlCommand("select * from StudentInfo where StudentId =@username", con);
          //  cmd.Parameters.AddWithValue("@username", Session["sid"].ToString());

          //  SqlDataAdapter da = new SqlDataAdapter(cmd);
          //  DataTable dt = new DataTable();



          //  da.Fill(dt);


          //  if (dt.Rows.Count > 0)
          //  {
          //  txtId.Text = dt.Rows[0]["StudentId"].ToString();
          //  txtName.Text = dt.Rows[0]["StudentName"].ToString();
          //  txtPassword.Text = dt.Rows[0]["StudentPass"].ToString();
          //     txtCity.Text= dt.Rows[0]["City"].ToString();

          //  txtState.Text= dt.Rows[0]["State"].ToString();
           
          //txtMobile.Text= dt.Rows[0]["MobileNo"].ToString();
          //  txtAdd.Text= dt.Rows[0]["Address"].ToString();


       // }

        

    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtId.Text = "";
        txtName.Text = "";
        txtPassword.Text = "";
        txtMobile.Text = "";
        txtAdd.Text = "";
        txtCity.Text = "";
        txtState.Text = "";
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtCnfrmPwd.Text == "")
        {
            lblMessage.Text = "please Enter New Pasword";
        }

        else
        {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
                con.Open();
                SqlCommand cmd;

                string a = "update StudentInfo set StudentName=@p1,StudentPass=@p3,MobileNo=@p7,State=@p8,City=@p9,Address=@p10 where StudentId=@p11";
                cmd = new SqlCommand(a, con);
                cmd.Parameters.AddWithValue("@p11", Session["UserID"].ToString());
                cmd.Parameters.AddWithValue("@p1", txtName.Text);
               
                cmd.Parameters.AddWithValue("@p3", txtCnfrmPwd.Text);
               
                cmd.Parameters.AddWithValue("@p10", txtMobile.Text);
                cmd.Parameters.AddWithValue("@p8", txtAdd.Text);
                cmd.Parameters.AddWithValue("@p9", txtCity.Text);
                cmd.Parameters.AddWithValue("@p8", txtState.Text);
              
                cmd.ExecuteNonQuery();

                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Update Done')</script>");
           
                txtId.Text = "";
                txtName.Text = "";
                txtPassword.Text = "";
                txtMobile.Text = "";
                txtAdd.Text = "";
                txtCity.Text = "";
                txtState.Text = "";
                con.Close();
         
        }
      
    }
}