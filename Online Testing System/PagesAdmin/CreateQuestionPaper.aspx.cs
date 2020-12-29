using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PagesAdmin_CreateQuestionPaper : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void AddQuestions_Click(object sender, EventArgs e)
    {
        Session["selectedPaper"] = QP_DropDown.SelectedItem;
        Response.Redirect("AddQuestions.aspx");
    }
}