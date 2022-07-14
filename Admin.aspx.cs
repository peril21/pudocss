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

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
      
        

      
        if (txtUsername.Text=="Admin" && txtPassword.Text=="Admin")
        {

            Session["EId"] = "Admin";
            
            Response.Redirect("AdminHome.aspx");

        }
        else
        {
            string message = "Error: Invalid Id Or Password";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
        }
        
    }
}