using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class PagesUser_QuestionPaper : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserQuestionPaper"] != null)
        {
            Label_QP_Name.Text = Session["UserQuestionPaper"].ToString();
            questionistmethod();
        }

    }
    public void questionistmethod()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        con.Open();
        string questionQry= "Select * from QuestionPaper where subject ='" + Session["UserQuestionPaper"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(questionQry, con);
            try
            {
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.HasRows)
                {
                GridView_Questions.DataSource = rd;
                GridView_Questions.DataBind();
                }
                else
                {
                Label_Msg.Text = "No Questions Exsist in database";
                }
            }
            catch (Exception e)
            {
            Label_Msg.Text = e.Message;
            }
        con.Close();
        
    }
}
