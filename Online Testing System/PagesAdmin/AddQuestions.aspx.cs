using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
public partial class PagesAdmin_AddQuestions : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
    string insertQuery, getQuestions;
   static int count = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (Session["selectedPaper"] != null)
        { LabelCardHeader.Text = Session["selectedPaper"].ToString();
            getQuestions = "select count(*) from UserData where email = 'CS_65 Software Engineering'";
            SqlCommand com = new SqlCommand(getQuestions, con);
            Label_totalQuestions.Text = com.ExecuteScalar().ToString();
            SqlDataSource1.SelectCommand = "SELECT [Id], [Question], [option1], [option2], [option3], [option4], [answer] FROM [QuestionPaper] Where subject ='" + Session["selectedPaper"].ToString() + "'";
        }
        else
        {
            SqlDataSource1.SelectCommand = "SELECT [Id], [Question], [option1], [option2], [option3], [option4], [answer] FROM [QuestionPaper] Where subject ='hello'";
        }
        con.Close();
    }
    protected void Btn_AddQuestion_Click(object sender, EventArgs e)
    {
        int ans;
        if (RadioButton1.Checked)
        {
            ans = 1;
        }
        else if (RadioButton2.Checked)
        {
            ans = 2;
        }
        else if (RadioButton3.Checked)
        {
            ans = 3;
        }
        else
        {
            ans = 4;
        }
        try
        {

            con.Open();
            insertQuery = "insert into QuestionPaper (Question,option1,option2,option3,option4,answer,subject) " +
                "values(@question,@option1,@option2,@option3,@option4,@answer,@subject)";
            SqlCommand com = new SqlCommand(insertQuery, con);
            com.Parameters.AddWithValue("@question",TB_Question.Text);
            com.Parameters.AddWithValue("@option1",TextBox1.Text);
            com.Parameters.AddWithValue("@option2", TextBox2.Text);
            com.Parameters.AddWithValue("@option3", TextBox3.Text);
            com.Parameters.AddWithValue("@option4", TextBox4.Text);
            com.Parameters.AddWithValue("@answer", ans);
            com.Parameters.AddWithValue("@subject", Session["selectedPaper"].ToString());
            com.ExecuteNonQuery();
            TB_Question.Text = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            count++;
            Label_QuestionsAdded.Text = count + " Question Add";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
        con.Close();
        Response.Redirect("AddQuestions.aspx");
    }
}