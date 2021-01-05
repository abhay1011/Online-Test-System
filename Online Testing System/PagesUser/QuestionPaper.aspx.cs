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
    static int totalDuration=Session["iuser"];
    protected void Page_Init(object sender, EventArgs e)
    {
        generateQuestions();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["UserQuestionPaper"] != null)
        {
            Label_QP_Name.Text = Session["UserQuestionPaper"].ToString();



           /* SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            con.Open();
            string qry = "select distinct duration from  QuestionPaper where subject ='" + Session["UserQuestionPaper"].ToString() + "'";
            SqlCommand com = new SqlCommand(qry, con);
            string temp = com.ExecuteScalar().ToString().Replace(" ", "");
            totalDuration = Int32.Parse(temp);
            totalDuration *= 60;
            Response.Write("<h1>" + totalDuration + temp + "</h1>");
            con.Close();
            */
        }
        else
        {
            Response.Redirect("UserHome.aspx");
        }

    }
    public void generateQuestions()
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        con.Open();

            try
            {
            string questionQry = "Select * from QuestionPaper where subject ='" + Session["UserQuestionPaper"].ToString() + "'";
            SqlCommand cmd = new SqlCommand(questionQry, con);
            SqlDataReader rd = cmd.ExecuteReader();
                if (rd.HasRows)
                {
                GridView_Questions.DataSource = rd;
                GridView_Questions.DataBind();
                }
                else
                {
                Label_Msg.Text = "No Questions Exist in database";
                }
            }
            catch (Exception e)
            {
            Label_Msg.Text = e.Message;
            }
        con.Close();
        
    }

   public int correct = 0;
   public int wrong = 0;
   public int total = 0;
   public int unattempted = 0;
    protected void BTN_QP_Submit_Click(object sender, EventArgs e)
    {
        int userAns;
        foreach(GridViewRow row in GridView_Questions.Rows)
        {
            Label LabelQid = row.FindControl("Label_Qid") as Label;
            int Qid = Int32.Parse(LabelQid.Text);
            System.Diagnostics.Debug.WriteLine("Qid :"+Qid);

            RadioButton r1 = row.FindControl("option1") as RadioButton;
            System.Diagnostics.Debug.WriteLine(r1.Checked);
            RadioButton r2 = row.FindControl("option2") as RadioButton;
            RadioButton r3 = row.FindControl("option3") as RadioButton;
            RadioButton r4 = row.FindControl("option4") as RadioButton;

            if (r1.Checked)
            {
                userAns = 1;
                System.Diagnostics.Debug.WriteLine("First RadioButton Checked :");
            }
            else if (r2.Checked)
            {
                userAns = 2;
            }
            else if (r3.Checked)
            {
                userAns = 3;
            }
            else if (r4.Checked)
            {
                userAns = 4;
            }
            else
            {
                userAns = 0;
            }

            checkAnswer(Qid, userAns);
            total++;
        }
        storeData();
        Response.Redirect("ResponseSubmitted.aspx");
    }
    public void checkAnswer(int Qid,int userAns)
    {
        string ans;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        con.Open();
        string ansQry = "Select answer from QuestionPaper where id ='" +Qid+ "'";
        SqlCommand cmd = new SqlCommand(ansQry, con);
        ans = cmd.ExecuteScalar().ToString();
        if (userAns.ToString() == ans)
        {
            correct++;
        }
        else if(userAns.ToString()=="0")
        {
            unattempted++;
        }
        else
        {
            wrong++;
        }
        con.Close();
    }
    public void storeData()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        con.Open();
        try
        {

            string insertQuery = "insert into ExamData (Time,UserName,UserEmail,UserRollNo,Course,Semester,Subject,TotalQuestions,RightQuestions,WrongQuestions,UnattemptedQuestions)" +
                " values(@examdate,@name,@email,@rollno,@course,@semester,@subject,@total,@right,@wrong,@unattempted)";
            SqlCommand com = new SqlCommand(insertQuery, con);
            com.Parameters.AddWithValue("@examdate", DateTime.Now.ToString());
            com.Parameters.AddWithValue("@name", Session["userName"].ToString());
            com.Parameters.AddWithValue("@email", Session["userEmail"].ToString());
            com.Parameters.AddWithValue("@rollno", Session["userRollNo"].ToString());
            com.Parameters.AddWithValue("@course", Session["userCourse"].ToString());
            com.Parameters.AddWithValue("@semester", Session["userSemester"].ToString());
            com.Parameters.AddWithValue("@subject", Session["UserQuestionPaper"].ToString());
            com.Parameters.AddWithValue("@total",total);
            com.Parameters.AddWithValue("@right",correct);
            com.Parameters.AddWithValue("@wrong", wrong);
            com.Parameters.AddWithValue("@unattempted",unattempted);
            com.ExecuteNonQuery();


        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
        con.Close();
    }



    //For Timer
    static int min;
    static int secLeft;
    protected void Timer1_Tick(object sender, EventArgs e)
    {   
        min = totalDuration / 60;
        secLeft = totalDuration % 60;
        totalDuration = totalDuration - 1;
        Label1.Text = min.ToString() + " : " + secLeft;
        if (totalDuration < 1)
        {
            BTN_QP_Submit_Click(sender,e);
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<h1> Clicked </h1>");
    }
}
