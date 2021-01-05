using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class PagesUser_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BTN_TestPaperSelect_Click(object sender, EventArgs e)
    {
        Session["UserQuestionPaper"] = DD_SelectQp.SelectedItem;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        con.Open();
        string qry = "select distinct duration from  QuestionPaper where subject ='" + Session["UserQuestionPaper"].ToString() + "'";
        SqlCommand com = new SqlCommand(qry, con);
        string temp = com.ExecuteScalar().ToString().Replace(" ", "");
        Session["testDuration"] = temp;
        con.Close();
        Response.Redirect("QuestionPaper.aspx");
    }
}