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
    public partial class TT : System.Web.UI.Page
    {
        SqlConnection sqlconn = new SqlConnection(WebConfigurationManager.ConnectionStrings["FeedbackSystemConnectionString"].ConnectionString);
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {


                SqlCommand sqlcmd = new SqlCommand("sp_tempt", sqlconn);
                sqlcmd.CommandType = CommandType.StoredProcedure;

                DataTable dt = new DataTable();
                dt.Columns.Add("Quest");


                

                



                SqlParameter param = new SqlParameter();
                param.ParameterName = "@Q";
                param.Value = dt;
                sqlcmd.Parameters.Add(param);

                sqlconn.Open();
                sqlcmd.ExecuteNonQuery();
                sqlconn.Close();

                Response.Write("<script>alert('Feedback is Successfull')</script>");








            }

            catch (Exception ex)
            {
                lblmsg.Text = ex.ToString();
            }


        }
    }
}