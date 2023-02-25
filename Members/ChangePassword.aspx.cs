using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Members_ChangePassword : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["FeedbackSystemConnectionString"].ConnectionString);
    SqlCommand cmd;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["Login"] != null)
        {
            lblShowName.Text = Request.Cookies["Login"]["Email"].ToString();

            cmd = new SqlCommand("rUserInfo", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50).Value = lblShowName.Text.Trim();

            if (conn.State == ConnectionState.Closed)
            {

                conn.Open();

            }

            SqlDataReader sqldr;

            sqldr = cmd.ExecuteReader();
            if (sqldr.HasRows)
            {

                sqldr.Read();
                lblShowName.Text = sqldr["Email"].ToString();
                conn.Close();

            }
        }

        else
        {
            Response.Redirect("HomePage.aspx");
        }
    }
    protected void linklogout_Click(object sender, EventArgs e)
    {
        HttpCookie LoginCookies = new HttpCookie("Login");
        LoginCookies.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(LoginCookies);
        Response.Redirect("Login.aspx");
        Session.Clear();
        Session.RemoveAll();
    }
    protected void btnChange_Click(object sender, EventArgs e)
    {
        
        SqlDataAdapter SQLAdapter = new SqlDataAdapter("select * from registeration where password='" + txtOldPassword.Text + "'", conn);
        DataTable DT = new DataTable();
        SQLAdapter.Fill(DT);

        if (DT.Rows.Count == 0)
        {
            Response.Write("<script>alert('Invalid Current Password')</script>");
        }
        else
        {
            if (txtNewPassword.Text == txtConfirmPassword.Text)
            {
                SQLAdapter = new SqlDataAdapter("update registeration set password='" + txtNewPassword.Text + "' where email='" + lblShowName.Text + "'", conn);
                SQLAdapter.Fill(DT);
                Response.Write("<script>alert('Password Change Successfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('New Password & Confirm Does not match')</script>");
            }
        }

    }
}