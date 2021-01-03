using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class PagesAdmin_ManageSubjects : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton2_Click()
    {

    }
    protected void BTN_addSubject_Click(object sender, EventArgs e)
    {
        int flag = 0;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        try
        {   
            conn.Open();
            string insertQuery;
            insertQuery = "insert into SubjectData (subject,Duration) " +
                   "values(@subject,@duration)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@subject", TB_AddSubject.Text);
            com.Parameters.AddWithValue("@duration", TB_AddDuration.Text);
            flag=com.ExecuteNonQuery();
            conn.Close();
            if (flag > 0)
                Label_Msg.Text = "Subject Successfully Added !";
            else
                Label_Msg.Text = "Error!";
        }
        catch(Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

}