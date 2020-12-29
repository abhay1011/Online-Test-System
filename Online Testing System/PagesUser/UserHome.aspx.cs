using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PagesUser_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BTN_TestPaperSelect_Click(object sender, EventArgs e)
    {
        Session["UserQuestionPaper"] = DD_SelectQp.SelectedItem;
        Response.Redirect("QuestionPaper.aspx");
    }
}