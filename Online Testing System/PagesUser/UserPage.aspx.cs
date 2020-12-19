using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserEmail"] != null)
        {
            Email_Label.Text = "Welcome " + Session["UserEmail"].ToString();
        }
        else
        {
            Response.Redirect("~/PagesError/Accessdenied.aspx");
        }
    }

    protected void BTN_Logout_Click(object sender, EventArgs e)
    {
        Session["UserEmail"] = null;
        Response.Redirect("~/Default.aspx");
    }
}