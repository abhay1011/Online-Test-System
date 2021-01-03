using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
public partial class UserRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void BTN_Register_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "select count(*) from UserData where email ='" + TB_Email.Text + "'";
        SqlCommand com1 = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com1.ExecuteScalar().ToString());
        if (temp >= 1)
        {
            User_Exist_Label.Text = "User Already Exist!,Choose Different Email";
        }
        else { 
                try
                {
            
                    string insertQuery = "insert into UserData (name,rollno,email,course,semester,password) values(@name,@rollno,@email,@course,@semester,@password)";
                    SqlCommand com = new SqlCommand(insertQuery, conn);
                    com.Parameters.AddWithValue("@name", TB_Name.Text);
                    com.Parameters.AddWithValue("@rollno", TB_RollNo.Text);
                    com.Parameters.AddWithValue("@email", TB_Email.Text);
                    com.Parameters.AddWithValue("@course", CourseDropDown.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@semester", SemesterDropDown.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@password", TB_Password.Text);
                    com.ExecuteNonQuery();

                Response.Redirect("~/PagesError/RegistrationSuccessfull.aspx");
            
                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }
            }
        conn.Close();
       // ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
    }
}