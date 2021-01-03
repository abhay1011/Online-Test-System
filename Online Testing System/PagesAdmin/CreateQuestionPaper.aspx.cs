using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class PagesAdmin_CreateQuestionPaper : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void AddQuestions_Click(object sender, EventArgs e)
    {
        conn.Open();
        string qry = "select duration from SubjectData where subject ='" + QP_DropDown.SelectedItem + "'";
        SqlCommand com = new SqlCommand(qry, conn);
        Session["Duration"] = com.ExecuteScalar().ToString();
        Session["selectedPaper"] = QP_DropDown.SelectedItem;
        Response.Redirect("AddQuestions.aspx");
    }
}