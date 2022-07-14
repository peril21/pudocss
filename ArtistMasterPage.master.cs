using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["id"] != null)
        //{
        //    Label1.Text = Session["name"].ToString();
        //}
        //else
        //{
        //    Response.Redirect("index.aspx");
        //}
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session.Abandon();
        Session.Clear();
    }
}
