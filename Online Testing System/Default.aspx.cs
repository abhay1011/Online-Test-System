using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void Login_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "select count(*) from UserData where email ='" + TB_Email.Text + "'";
        SqlCommand com1 = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com1.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {     
            conn.Open();
            string checkpassword = "select password from UserData where email ='" + TB_Email.Text + "'";
            SqlCommand passcom = new SqlCommand(checkpassword, conn);
            string password = passcom.ExecuteScalar().ToString().Replace(" ","");
            if (password==TB_Password.Text)
            {
                string userName = "select name from UserData where email ='" + TB_Email.Text + "'";
                SqlCommand getUserName = new SqlCommand(userName, conn);
                Session["userName"] = getUserName.ExecuteScalar();
                Response.Redirect("PagesUser/UserHome.aspx");
            }
            else
            {
                FailedLabel.Text = "Login Failed! Check Username and Password";
            }
            conn.Close();
        }
        else if (temp > 1)
        {
            conn.Open();
            string checkpassword = "select password from UserData where email ='" + TB_Email.Text + "'";
            SqlCommand passcom = new SqlCommand(checkpassword, conn);
            string password = passcom.ExecuteScalar().ToString().Replace(" ", "");
            if (password == TB_Password.Text)
            {
                string userName = "select name from UserData where email ='" + TB_Email.Text + "'";
                SqlCommand getUserName = new SqlCommand(userName, conn);
                Session["userName"] = getUserName.ExecuteScalar();
                Response.Redirect("PagesAdmin/AdminPanel.aspx");
            }
            else
            {
                FailedLabel.Text = "Login Failed! Check Username and Password";
            }
            conn.Close();
        }
        else
        {
            FailedLabel.Text = "Login Failed! Check Username and Password";
        }
    }
}