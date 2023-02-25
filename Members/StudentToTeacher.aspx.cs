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
    public partial class StudentToTeacher : System.Web.UI.Page
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
        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
           
           
        }



        protected void btnSave_Click(object sender, EventArgs e)
        {

            try
            {
                //Checking Section Start
                sqlcmd2 = new SqlCommand("sp_email_FeedbackChecking", sqlconn);
                sqlcmd2.CommandType = CommandType.StoredProcedure;
                sqlcmd2.Parameters.AddWithValue("@Feedback_Person", lblShowName.Text.Trim());
                sqlcmd2.Parameters.AddWithValue("@Subject_ID", drpSubject.SelectedItem.Value.Trim());
                sqlcmd2.Parameters.AddWithValue("@Teacher_ID", drpTeacher.SelectedItem.Value.Trim());

                SqlDataAdapter sqldaa = new SqlDataAdapter();
                sqldaa.SelectCommand = sqlcmd2;
                DataTable dtt = new DataTable();
                sqldaa.Fill(dtt);
                //Checking Section End

                if (dtt.Rows.Count >= 1)
                {
                    lblmsg.Text = "You have already given feedback for "
                        + "<b>" + drpTeacher.SelectedItem.Text + "</b>" + " and Subject " + "<b>" + drpSubject.SelectedItem.Text + "</b>";
                }

                else if (grp1.SelectedValue == "" || grp2.SelectedValue == "" || grp3.SelectedValue == "" || grp4.SelectedValue == ""
                   || grp5.SelectedValue == "" || grp6.SelectedValue == "" || grp7.SelectedValue == "" || grp8.SelectedValue == ""
                   || grp9.SelectedValue == "" || grp10.SelectedValue == "" || grp11.SelectedValue == "" || grp12.SelectedValue == ""
                   || grp13.SelectedValue == "" || grp14.SelectedValue == "" || grp15.SelectedValue == "" || grp16.SelectedValue == ""
                   || grp17.SelectedValue == "" || grp18.SelectedValue == "" || grp19.SelectedValue == "" || grp20.SelectedValue == ""
                   || grp21.SelectedValue == "" || grp22.SelectedValue == "" || grp23.SelectedValue == "" || grp24.SelectedValue == ""
                   || grp25.SelectedValue == "" || grp26.SelectedValue == "" || grp27.SelectedValue == "" || grp28.SelectedValue == ""
                   )
                {
                    Response.Write("<script>alert('You have not select radio button')</script>");
                    sawalat.Visible = true;
                    rutba.Visible = true;
                    this.txtcomment1.Focus();

                }

                else
                {

                    SqlCommand sqlcmd = new SqlCommand("SP_Feedback_Profile", sqlconn);
                    sqlcmd.CommandType = CommandType.StoredProcedure;

                    DataTable dt = new DataTable();
                    dt.Columns.Add("Question");
                    dt.Columns.Add("Answer");
                    dt.Columns.Add("Feedback_Person");
                    dt.Columns.Add("Comments");
                    dt.Columns.Add("Subject_ID");
                    dt.Columns.Add("Teacher_ID");
                    dt.Columns.Add("Field_ID");
                    dt.Columns.Add("TotalCredit_ID");

                        dt.Rows.Add(Q1.Text, grp1.SelectedItem.Text, lblShowName.Text, txtcomment1.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q2.Text, grp2.SelectedItem.Text, lblShowName.Text, txtcomment2.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q3.Text, grp3.SelectedItem.Text, lblShowName.Text, txtcomment3.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q4.Text, grp4.SelectedItem.Text, lblShowName.Text, txtcomment4.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q5.Text, grp5.SelectedItem.Text, lblShowName.Text, txtcomment5.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q6.Text, grp6.SelectedItem.Text, lblShowName.Text, txtcomment6.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q7.Text, grp7.SelectedItem.Text, lblShowName.Text, txtcomment7.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q8.Text, grp8.SelectedItem.Text, lblShowName.Text, txtcomment8.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q9.Text, grp9.SelectedItem.Text, lblShowName.Text, txtcomment9.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q10.Text, grp10.SelectedItem.Text, lblShowName.Text, txtcomment10.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q11.Text, grp11.SelectedItem.Text, lblShowName.Text, txtcomment11.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q12.Text, grp12.SelectedItem.Text, lblShowName.Text, txtcomment12.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q13.Text, grp13.SelectedItem.Text, lblShowName.Text, txtcomment13.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q14.Text, grp14.SelectedItem.Text, lblShowName.Text, txtcomment14.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q15.Text, grp15.SelectedItem.Text, lblShowName.Text, txtcomment15.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q16.Text, grp16.SelectedItem.Text, lblShowName.Text, txtcomment16.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q17.Text, grp17.SelectedItem.Text, lblShowName.Text, txtcomment17.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q18.Text, grp18.SelectedItem.Text, lblShowName.Text, txtcomment18.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q19.Text, grp19.SelectedItem.Text, lblShowName.Text, txtcomment19.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q20.Text, grp20.SelectedItem.Text, lblShowName.Text, txtcomment20.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q21.Text, grp21.SelectedItem.Text, lblShowName.Text, txtcomment21.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q22.Text, grp22.SelectedItem.Text, lblShowName.Text, txtcomment22.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q23.Text, grp23.SelectedItem.Text, lblShowName.Text, txtcomment23.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q24.Text, grp24.SelectedItem.Text, lblShowName.Text, txtcomment24.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q25.Text, grp25.SelectedItem.Text, lblShowName.Text, txtcomment25.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q26.Text, grp26.SelectedItem.Text, lblShowName.Text, txtcomment26.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q27.Text, grp27.SelectedItem.Text, lblShowName.Text, txtcomment27.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim());
                        dt.Rows.Add(Q28.Text, grp28.SelectedItem.Text, lblShowName.Text, txtcomment28.Text.Trim(), drpSubject.SelectedItem.Value.Trim(), drpTeacher.SelectedItem.Value.Trim(), drpFeild.SelectedItem.Value.Trim(), drpTotalCredit.SelectedItem.Value.Trim()); 


                    SqlParameter param = new SqlParameter();
                    param.ParameterName = "@Info";
                    param.Value = dt;
                    sqlcmd.Parameters.Add(param);

                    sqlconn.Open();
                    sqlcmd.ExecuteNonQuery();
                    sqlconn.Close();

                    Response.Write("<script>alert('Feedback is Successfull')</script>");

               





                }
            }

            catch (Exception ex)
            {
                lblmsg.Text = ex.ToString();
            }



        }


        protected void btnSubmit2_Click(object sender, EventArgs e)
        {
           


        }

        protected void rdiobutton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand sqlcmd = new SqlCommand("sp_Feeback_Rating", sqlconn);
                sqlcmd.CommandType = CommandType.StoredProcedure;

                //Checking Section Start
                sqlcmd2 = new SqlCommand("sp_email_FeedbackCheckingRate", sqlconn);
                sqlcmd2.CommandType = CommandType.StoredProcedure;
                sqlcmd2.Parameters.AddWithValue("@Feedback_Person", lblShowName.Text.Trim());
                sqlcmd2.Parameters.AddWithValue("@Subject_ID", drpSubjectRating.SelectedItem.Value.Trim());
                sqlcmd2.Parameters.AddWithValue("@Teacher_ID", drpTeacherRating.SelectedItem.Value.Trim());

                SqlDataAdapter sqldaa = new SqlDataAdapter();
                sqldaa.SelectCommand = sqlcmd2;
                DataTable dtt = new DataTable();
                sqldaa.Fill(dtt);
                //Checking Section End

                if (dtt.Rows.Count >= 1)
                {
                    lblmsg2.Text = "You have already given Rate for "
                        + "<b>" + drpTeacherRating.SelectedItem.Text + "</b>" + " and Subject " + "<b>" + drpSubjectRating.SelectedItem.Text + "</b>";
                }

                else if (grp29.SelectedValue == "" || grp30.SelectedValue == "" || grp31.SelectedValue == "" || grp32.SelectedValue == "" ||
                    grp33.SelectedValue == "" || grp34.SelectedValue == "" || grp35.SelectedValue == "" || grp44.SelectedValue == "" ||
                    grp37.SelectedValue == "" || grp38.SelectedValue == "" || grp39.SelectedValue == "" || grp40.SelectedValue == "" ||
                    grp41.SelectedValue == "" || grp42.SelectedValue == "" || grp43.SelectedValue == "" || grp44.SelectedValue == ""
                    )
                {
                    Response.Write("<script>alert('|You have missed selecting one of radio buttons|')</script>");
                  


                }

                else
                {
                    DataTable dt = new DataTable();
                    dt.Columns.Add("Question");
                    dt.Columns.Add("Rate_Name");
                    dt.Columns.Add("Feedback_Person");
                    dt.Columns.Add("Subject_ID");
                    dt.Columns.Add("Teacher_ID");
                    dt.Columns.Add("Field_ID");
                    dt.Columns.Add("TotalCredit_ID");

                    dt.Rows.Add(Q29.Text, grp29.SelectedItem.Text, lblShowName.Text, drpSubjectRating.SelectedItem.Value.Trim(), drpTeacherRating.SelectedItem.Value.Trim(), drpFieldRating.SelectedItem.Value.Trim(), drpTotalCreditRating.SelectedItem.Value.Trim());
                    dt.Rows.Add(Q30.Text, grp30.SelectedItem.Text, lblShowName.Text, drpSubjectRating.SelectedItem.Value.Trim(), drpTeacherRating.SelectedItem.Value.Trim(), drpFieldRating.SelectedItem.Value.Trim(), drpTotalCreditRating.SelectedItem.Value.Trim());
                    dt.Rows.Add(Q31.Text, grp31.SelectedItem.Text, lblShowName.Text, drpSubjectRating.SelectedItem.Value.Trim(), drpTeacherRating.SelectedItem.Value.Trim(), drpFieldRating.SelectedItem.Value.Trim(), drpTotalCreditRating.SelectedItem.Value.Trim());
                    dt.Rows.Add(Q32.Text, grp32.SelectedItem.Text, lblShowName.Text, drpSubjectRating.SelectedItem.Value.Trim(), drpTeacherRating.SelectedItem.Value.Trim(), drpFieldRating.SelectedItem.Value.Trim(), drpTotalCreditRating.SelectedItem.Value.Trim());
                    dt.Rows.Add(Q33.Text, grp33.SelectedItem.Text, lblShowName.Text, drpSubjectRating.SelectedItem.Value.Trim(), drpTeacherRating.SelectedItem.Value.Trim(), drpFieldRating.SelectedItem.Value.Trim(), drpTotalCreditRating.SelectedItem.Value.Trim());
                    dt.Rows.Add(Q34.Text, grp34.SelectedItem.Text, lblShowName.Text, drpSubjectRating.SelectedItem.Value.Trim(), drpTeacherRating.SelectedItem.Value.Trim(), drpFieldRating.SelectedItem.Value.Trim(), drpTotalCreditRating.SelectedItem.Value.Trim());
                    dt.Rows.Add(Q35.Text, grp35.SelectedItem.Text, lblShowName.Text, drpSubjectRating.SelectedItem.Value.Trim(), drpTeacherRating.SelectedItem.Value.Trim(), drpFieldRating.SelectedItem.Value.Trim(), drpTotalCreditRating.SelectedItem.Value.Trim());
                    dt.Rows.Add(Q36.Text, grp36.SelectedItem.Text, lblShowName.Text, drpSubjectRating.SelectedItem.Value.Trim(), drpTeacherRating.SelectedItem.Value.Trim(), drpFieldRating.SelectedItem.Value.Trim(), drpTotalCreditRating.SelectedItem.Value.Trim());
                    dt.Rows.Add(Q37.Text, grp37.SelectedItem.Text, lblShowName.Text, drpSubjectRating.SelectedItem.Value.Trim(), drpTeacherRating.SelectedItem.Value.Trim(), drpFieldRating.SelectedItem.Value.Trim(), drpTotalCreditRating.SelectedItem.Value.Trim());
                    dt.Rows.Add(Q38.Text, grp38.SelectedItem.Text, lblShowName.Text, drpSubjectRating.SelectedItem.Value.Trim(), drpTeacherRating.SelectedItem.Value.Trim(), drpFieldRating.SelectedItem.Value.Trim(), drpTotalCreditRating.SelectedItem.Value.Trim());
                    dt.Rows.Add(Q39.Text, grp39.SelectedItem.Text, lblShowName.Text, drpSubjectRating.SelectedItem.Value.Trim(), drpTeacherRating.SelectedItem.Value.Trim(), drpFieldRating.SelectedItem.Value.Trim(), drpTotalCreditRating.SelectedItem.Value.Trim());
                    dt.Rows.Add(Q40.Text, grp40.SelectedItem.Text, lblShowName.Text, drpSubjectRating.SelectedItem.Value.Trim(), drpTeacherRating.SelectedItem.Value.Trim(), drpFieldRating.SelectedItem.Value.Trim(), drpTotalCreditRating.SelectedItem.Value.Trim());
                    dt.Rows.Add(Q41.Text, grp41.SelectedItem.Text, lblShowName.Text, drpSubjectRating.SelectedItem.Value.Trim(), drpTeacherRating.SelectedItem.Value.Trim(), drpFieldRating.SelectedItem.Value.Trim(), drpTotalCreditRating.SelectedItem.Value.Trim());
                    dt.Rows.Add(Q42.Text, grp42.SelectedItem.Text, lblShowName.Text, drpSubjectRating.SelectedItem.Value.Trim(), drpTeacherRating.SelectedItem.Value.Trim(), drpFieldRating.SelectedItem.Value.Trim(), drpTotalCreditRating.SelectedItem.Value.Trim());
                    dt.Rows.Add(Q43.Text, grp43.SelectedItem.Text, lblShowName.Text, drpSubjectRating.SelectedItem.Value.Trim(), drpTeacherRating.SelectedItem.Value.Trim(), drpFieldRating.SelectedItem.Value.Trim(), drpTotalCreditRating.SelectedItem.Value.Trim());
                    dt.Rows.Add(Q44.Text, grp44.SelectedItem.Text, lblShowName.Text, drpSubjectRating.SelectedItem.Value.Trim(), drpTeacherRating.SelectedItem.Value.Trim(), drpFieldRating.SelectedItem.Value.Trim(), drpTotalCreditRating.SelectedItem.Value.Trim());


                    SqlParameter param = new SqlParameter();
                    param.ParameterName = "@Rate";
                    param.Value = dt;
                    sqlcmd.Parameters.Add(param);

                    sqlconn.Open();
                    sqlcmd.ExecuteNonQuery();
                    sqlconn.Close();




                    Response.Write("<script>alert('Rating Submitted to Database')</script>");
                    sawalat.Visible = true;
                    rutba.Visible = true;

                 
                }
            }
            catch (Exception exe)
            {
                lblmsg.Text = exe.ToString();
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