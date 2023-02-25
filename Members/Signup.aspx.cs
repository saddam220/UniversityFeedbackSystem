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
    public partial class Signup : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["FeedbackSystemConnectionString"].ConnectionString);
        SqlCommand cmd;
        SqlCommand cmdcheck;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSignup_Click(object sender, EventArgs e)
        {
            try {

                if (txtFirstName.Text == string.Empty || TxtLastName.Text == string.Empty || txtGender.Text == string.Empty
                    || txtEmail.Text == string.Empty || txtPassword.Text == string.Empty
                    || txtConfirmPassword.Text == string.Empty)
                {
                    lblmsg.Text = "Field should not be empty";

                }

                    else if (txtPassword.Text != txtConfirmPassword.Text)
                    {
                        lblmsg.Text = "Password does not match Confirm Password";
                    }
                
                else
                {
                    cmd = new SqlCommand("PROC_REG", conn);
                    cmdcheck = new SqlCommand("EmailCheck", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmdcheck.CommandType = CommandType.StoredProcedure;
                    cmdcheck.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    SqlDataAdapter sqlda = new SqlDataAdapter();
                    sqlda.SelectCommand = cmdcheck;
                    DataTable dt = new DataTable();
                    sqlda.Fill(dt);

                    if (dt.Rows.Count.ToString() == "1")
                    {
                        lblmsg.Text = "You already have an Account";
                    }
                    else if(dt.Rows.Count.ToString() != "1")
                    {
                        cmd.Parameters.AddWithValue("@fName", txtFirstName.Text.Trim());
                        cmd.Parameters.AddWithValue("@LastName", TxtLastName.Text.Trim());
                        cmd.Parameters.AddWithValue("@Semester", DrpSemester.SelectedItem.Value.Trim());
                        cmd.Parameters.AddWithValue("@Session", DrpSession.SelectedItem.Value.Trim());
                        cmd.Parameters.AddWithValue("@Faculty", drpFaculty.SelectedItem.Value.Trim());
                        cmd.Parameters.AddWithValue("@FeedbackPerson", drpFeedbackperson.SelectedItem.Value.Trim());
                        cmd.Parameters.AddWithValue("@Gender", txtGender.Text.Trim());
                        cmd.Parameters.AddWithValue("@Age", drpAge.SelectedItem.Value.Trim());
                        cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                        cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());


                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();
                        lblmsg.Text = "Successfully Registered";

                    }
                }
            }
            catch(Exception exe)
            {
                Response.Write(exe);
            }
        }

        protected void lnkSignin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
            
        }

       
    }
}