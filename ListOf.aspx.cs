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
    public partial class ListOf : System.Web.UI.Page

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

            grdLateComing.Visible = false;
            grdWeakTeachers.Visible = false;
            grdNonControlling.Visible = false;
            grdNonBehavioral.Visible = false;
            grdMaterials.Visible = false;
            grdpolitical.Visible = false;
        }

     

        protected void dropdownList_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }

        protected void dropdownList_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void btndrp_Click(object sender, EventArgs e)
        {
            if (dropdownList.SelectedValue == "1")
            {
                grdLateComing.Visible = true;
            }
            else if (dropdownList.SelectedValue == "2")
            {
                
               grdWeakTeachers.Visible = true;
            }
            else if (dropdownList.SelectedValue == "3")
            {

                grdNonControlling.Visible = true;
            }
            else if (dropdownList.SelectedValue == "4")
            {

                grdNonBehavioral.Visible = true;
            }
            else if (dropdownList.SelectedValue == "5")
            {

                grdMaterials.Visible = true;
            }
            else if (dropdownList.SelectedValue == "6")
            {

                grdpolitical.Visible = true;
            }

            else
            {
                Response.Write("<script>alert('Not Selected')</script>");
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