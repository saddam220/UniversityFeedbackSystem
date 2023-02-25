using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practice
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            try {
                {
                    if (Email.Text == "")
                    {
                        Response.Write("<script>alert('Enter Email')</script>");
                    }
                    else if (Password.Text == "")
                    {
                        Response.Write("<script>alert('Enter Password')</script>");
                    }
                    else if (Email.Text == "admin@gmail.com" && Password.Text == "admin")
                    {


                        HttpCookie LoginCookies = new HttpCookie("Login");
                        LoginCookies["Email"] = Email.Text.ToString();
                        LoginCookies.Expires = DateTime.Now.AddDays(1d);
                        Response.Cookies.Add(LoginCookies);

                        Response.Redirect("Dashboard.aspx");


                    }
                    else
                    {
                        Response.Write("<script>alert('Credentials are invalid.. This is admin portal')</script>");
                    }
                }




            }
            
            catch (Exception exe)
            {
                Response.Write(exe);
            }
        }

        protected void lbtn1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Members/Signup.aspx");
        }
    }
}