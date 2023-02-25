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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["FeedbackSystemConnectionString"].ConnectionString);
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void lbtn1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            try {
                cmd = new SqlCommand("signin_Proc", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Email", Email.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", Password.Text.Trim());
                SqlDataAdapter sqlda = new SqlDataAdapter();
                sqlda.SelectCommand = cmd;

                DataTable dt = new DataTable();
                sqlda.Fill(dt);


                if (drploginas.SelectedItem.Value.Trim() != "Student")
                {
                    Response.Write("<script>alert('As of now the feedbacking will only work for students')</script>");
                }

                else if (dt.Rows.Count.ToString() == "1")
                {
                    HttpCookie LoginCookies = new HttpCookie("Login");
                    LoginCookies["Email"] = dt.Rows[0]["Email"].ToString();
                    LoginCookies.Expires = DateTime.Now.AddDays(1d);
                    Response.Cookies.Add(LoginCookies);
                
                    Response.Redirect("MemberDashboard.aspx");

                }
                
                else if (dt.Rows.Count.ToString() != "1")
                {
                    Response.Write("<script>alert('User or Password is Wrong')</script>");  
                }

               
                }
        
            catch(Exception exe)
            {
                Response.Write(exe);
            }
        }

        protected void lbtnForgot_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Please Contact Administrator')</script>");
        }

       
    }
}