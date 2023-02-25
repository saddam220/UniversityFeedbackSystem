using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
namespace Practice.Members
{
    public partial class StudentToUniversity : System.Web.UI.Page
    {
        SqlConnection sqlconn = new SqlConnection(WebConfigurationManager.ConnectionStrings["FeedbackSystemConnectionString"].ConnectionString);
        SqlCommand sqlcmd;
        SqlCommand sqlcmd2;
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
                    sqlconn.Close();

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

        protected void btnUniversitySubmit_Click(object sender, EventArgs e)
        {
            try
            {
                //Checking Section Start
                sqlcmd2 = new SqlCommand("sp_email_FeedbackUniversityChecking", sqlconn);
                sqlcmd2.CommandType = CommandType.StoredProcedure;
                sqlcmd2.Parameters.AddWithValue("@Feedback_Person", lblShowName.Text.Trim());
                

                SqlDataAdapter sqldaa = new SqlDataAdapter();
                sqldaa.SelectCommand = sqlcmd2;
                DataTable dtt = new DataTable();
                sqldaa.Fill(dtt);
                //Checking Section End

                if (dtt.Rows.Count >= 1)
                {
                    Response.Write("<script>alert('Sorry! You have already given feedback')</script>");
                    
                }

                else if (RadioButtonList1.SelectedValue == "" || RadioButtonList2.SelectedValue == "" || RadioButtonList3.SelectedValue == "" || RadioButtonList4.SelectedValue == ""
                   || RadioButtonList5.SelectedValue == "" || RadioButtonList6.SelectedValue == "" || RadioButtonList7.SelectedValue == "" || RadioButtonList8.SelectedValue == ""
                   || RadioButtonList9.SelectedValue == "" || RadioButtonList10.SelectedValue == "" )
                {
                    Response.Write("<script>alert('You have not select radio button')</script>");
                 

                }

                else
                {

                    SqlCommand sqlcmd = new SqlCommand("SP_Feedback_Profile_University", sqlconn);
                    sqlcmd.CommandType = CommandType.StoredProcedure;

                    DataTable dt = new DataTable();
                    dt.Columns.Add("Question");
                    dt.Columns.Add("Answer");
                    dt.Columns.Add("Feedback_Person");
                    dt.Columns.Add("Comment");


                    dt.Rows.Add(Label1.Text, RadioButtonList1.SelectedItem.Text, lblShowName.Text);
                    dt.Rows.Add(Label2.Text, RadioButtonList2.SelectedItem.Text, lblShowName.Text);
                    dt.Rows.Add(Label3.Text, RadioButtonList3.SelectedItem.Text, lblShowName.Text);
                    dt.Rows.Add(Label4.Text, RadioButtonList4.SelectedItem.Text, lblShowName.Text);
                    dt.Rows.Add(Label5.Text, RadioButtonList5.SelectedItem.Text, lblShowName.Text);
                    dt.Rows.Add(Label6.Text, RadioButtonList6.SelectedItem.Text, lblShowName.Text);
                    dt.Rows.Add(Label7.Text, RadioButtonList7.SelectedItem.Text, lblShowName.Text);
                    dt.Rows.Add(Label8.Text, RadioButtonList8.SelectedItem.Text, lblShowName.Text);
                    dt.Rows.Add(Label9.Text, RadioButtonList9.SelectedItem.Text, lblShowName.Text);
                    dt.Rows.Add(Label10.Text, RadioButtonList10.SelectedItem.Text, lblShowName.Text, txtCommentForUniversity.Text.Trim());
                    
                    

                    SqlParameter param = new SqlParameter();
                    param.ParameterName = "@University";
                    param.Value = dt;
                    sqlcmd.Parameters.Add(param);

                    sqlconn.Open();
                    sqlcmd.ExecuteNonQuery();
                    sqlconn.Close();

                    Response.Write("<script>alert('Your Feedback is Success')</script>");







                }
            }

            catch (Exception ex)
            {
                lblmsg.Text = ex.ToString();
            }
        }
    }
}