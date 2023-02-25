using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
namespace Practice
{
    public partial class AddTeacher : System.Web.UI.Page
    {
        SqlConnection sqlconn = new SqlConnection(WebConfigurationManager.ConnectionStrings["FeedbackSystemConnectionString"].ConnectionString);
        SqlCommand sqlcmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Login"] != null)
            {
                lblShowName.Text = Request.Cookies["Login"]["Email"].ToString();

                sqlcmd = new SqlCommand("rUserInfo", sqlconn);
                sqlcmd.CommandType = CommandType.StoredProcedure;
                sqlcmd.Parameters.Add("@Email", SqlDbType.VarChar, 50).Value = lblShowName.Text.Trim();

                if (sqlconn.State == ConnectionState.Closed)
                {

                    sqlconn.Open();

                }

                SqlDataReader sqldr;

                sqldr = sqlcmd.ExecuteReader();
                if (sqldr.HasRows)
                {

                    sqldr.Read();
                    lblShowName.Text = sqldr["Email"].ToString();
                    

                }
                sqlconn.Close();
            }

            else
            {
                Response.Redirect("Members/HomePage.aspx");
            }
        }

        protected void btnTeacher_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtTeacher.Text == "")
                {
                    Response.Write("<script>alert('Teacher is Blank')</script>");
                }
                else
                {
                    sqlcmd = new SqlCommand("Teacher_Proc", sqlconn);
                    sqlcmd.CommandType = CommandType.StoredProcedure;

                    sqlcmd.Parameters.AddWithValue("@TeacherName", txtTeacher.Text.Trim());
                    sqlconn.Open();
                    sqlcmd.ExecuteNonQuery();
                    sqlconn.Close();
                    Response.Write("<script>alert('Record Inserted')</script>");
                    grdview.DataBind();
                    txtTeacher.Text = "";
                }

            }
            catch (Exception ece)
            {
                lblmsg.Text = ece.Message;
                
            }
        }
        protected void grdview_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Del")
            {
                sqlcmd = new SqlCommand("deleteTeacher_Proc", sqlconn);
                sqlcmd.CommandType = CommandType.StoredProcedure;
                sqlcmd.Parameters.Add("@id", SqlDbType.Int).Value = e.CommandArgument.ToString();

                sqlconn.Open();
                sqlcmd.ExecuteNonQuery();
                sqlconn.Close();

                grdview.DataBind();
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