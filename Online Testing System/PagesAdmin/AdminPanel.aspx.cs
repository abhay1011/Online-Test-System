using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class PagesAdmin_AdminPanel : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
    String getQry;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            conn.Open();
            getQry = "select count(*) from UserData";
            SqlCommand com = new SqlCommand(getQry, conn);
            Label1.Text = com.ExecuteScalar().ToString();
            getQry = "SELECT COUNT(DISTINCT subject)  FROM QuestionPaper";
             com = new SqlCommand(getQry, conn);
            Label2.Text = com.ExecuteScalar().ToString();
            getQry = "select count(*) from ExamData";
             com = new SqlCommand(getQry, conn);
            Label3.Text = com.ExecuteScalar().ToString();
            getQry = "select count(*) from SubjectData";
            com = new SqlCommand(getQry, conn);
            Label4.Text = com.ExecuteScalar().ToString();
        }
        catch(Exception ex)
        {
            Response.Write(ex.Message);
        }

        conn.Close();

    }
}