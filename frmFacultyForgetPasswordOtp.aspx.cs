using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblOtp.Text = "OTP Send to your Mobile No is =" + Session["OTP"].ToString();
    }

   
    protected void Button1_Click2(object sender, EventArgs e)
    {

        if (txtForgotpwd.Text == "")
        {
            ScriptManager.RegisterStartupScript(this.Page, GetType(), " OTP", "Enter OTP", true);
           
        }

        else
        {
            if (txtForgotpwd.Text == Session["OTP"].ToString())
            {
                Response.Redirect("frmFacultyForgetPasswordResetPass.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this.Page, GetType(), "Invaild OTP", "Enter OTP", true);

            }
        }
    }
}