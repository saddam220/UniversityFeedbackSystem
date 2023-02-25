using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
namespace Practice
{
    public partial class MemberDashboard : System.Web.UI.Page
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
    }



        }

        

        
    
