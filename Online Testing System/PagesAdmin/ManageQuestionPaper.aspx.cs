using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class PagesAdmin_ManageQuestionPaper : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DeleteButton_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        try
        {
            conn.Open();
            string qry = "delete from QuestionPaper where subject='" + DropDownList1.SelectedItem + "'";
            SqlCommand com = new SqlCommand(qry, conn);
            com.ExecuteNonQuery();
        }
        catch(Exception ex)
        {
            Response.Write(ex.Message);
        }
        conn.Close();
        Response.Redirect("ManageQuestionPaper.aspx");
    }
}