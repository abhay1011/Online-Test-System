using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
public partial class PagesAdmin_DeleteQuestionPaper : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BTN_Delete_Click(object sender, EventArgs e)
    {
        string qry = "delete from QuestionPaper where subject='" + DeleteDropDown.SelectedValue + "'";
        con.Open();
        SqlCommand com = new SqlCommand(qry, con);
        com.ExecuteNonQuery();
        Response.Redirect("DeleteQuestionPaper.aspx");
        con.Close();
        Label_QeustionDeleted.Text = "Deletion Successfull!";
    }
}