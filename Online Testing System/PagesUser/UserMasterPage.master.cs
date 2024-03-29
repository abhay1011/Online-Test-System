﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PagesUser_UserMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userName"] != null)
        {
            Name_Label.Text = "Hello, "+Session["userName"].ToString();
        }
        else
        {
            Response.Redirect("~/PagesError/Accessdenied.aspx");
        }
    }

    protected void BTN_Logout_Click(object sender, EventArgs e)
    {
        Session["userName"] = null;
        Response.Redirect("~/Default.aspx");
    }
}
