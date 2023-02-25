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
    public partial class Dashboard : System.Web.UI.Page
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
                    lblShowName.Text = sqldr["Name"].ToString();

                }
            }

            else
            {
                Response.Redirect("Members/HomePage.aspx");
            }
            




            string cmdText = "select count(ID) from registeration;" +
                 "select count(distinct(Feedback_Person)) from Feedback_Entry; " +
                  "select count(distinct(Feedback_Person)) from Feedback_Rating; "+ 
                  "select Max(EntryDate) from Feedback_Entry;";
            using (SqlConnection conDatabase = new SqlConnection(WebConfigurationManager.ConnectionStrings["FeedbackSystemConnectionString"].ConnectionString))
            using (SqlCommand cmd = new SqlCommand(cmdText, conDatabase))
            {
                conDatabase.Open();
                
                using (SqlDataReader reader = cmd.ExecuteReader())
                
                {
                    try
                    {
                        reader.Read();
                        int numRec1 = Convert.ToInt32(reader[0]);
                        reader.NextResult();

                        reader.Read();
                        int numRec2 = Convert.ToInt32(reader[0]);
                        reader.NextResult();

                        reader.Read();
                        int numRec3 = Convert.ToInt32(reader[0]);
                        reader.NextResult();

                        reader.Read();
                        String numRec4 = Convert.ToDateTime(reader[0]).ToString("dd/MM/yyyy");
                        reader.NextResult();




                        TotalUser.InnerText = numRec1.ToString();
                        Div2.InnerText = numRec2.ToString();
                        Div4.InnerText = numRec3.ToString();
                        Div6.InnerText = numRec4.ToString();

                    }
                    catch (Exception ec)
                    {
                        Response.Write(ec.Message);
                    }
                }
            }



        }

        

        protected void linklogout_Click(object sender, EventArgs e)
        {
            HttpCookie LoginCookies = new HttpCookie("Login");
            LoginCookies.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(LoginCookies);
            Response.Redirect("AdminLogin.aspx");
            Session.Clear();
            Session.RemoveAll();
        }
    }
}