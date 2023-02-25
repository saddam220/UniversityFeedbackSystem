using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
public partial class Members_Reset : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["FeedbackSystemConnectionString"].ConnectionString);
    SqlCommand cmd;
    String str = null;
    byte up;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        
        conn.Open();
        str = "select * from registeration ";
        cmd = new SqlCommand(str, conn);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            if (txtOldPassword.Text == reader["Password"].ToString())
            {
                up = 1;
            }
        }
        reader.Close();
        conn.Close();
        if (up == 1)
        {
            conn.Open();
            str = "update registeration set Password=@Password where Email='" + Session["Email"].ToString() + "'";
            cmd = new SqlCommand(str, conn);
            cmd.Parameters.Add(new SqlParameter("@Password", SqlDbType.VarChar, 50));
            cmd.Parameters["@Password"].Value = txtNewPassword.Text;
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Password Changed Successfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('Please enter correct current password!')</script>");
        }  
    }
}