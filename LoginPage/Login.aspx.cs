using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace LoginPage
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlcon = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=SpareSystem;Integrated security=true"))
            {
                sqlcon.Open();
                string query = " SELECT COUNT(1) from Login where username=@username AND password = @password";
                SqlCommand cmd = new SqlCommand(query, sqlcon);
                cmd.Parameters.AddWithValue("@username", txtUser.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtPass.Text.Trim());
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                if(count == 1)
                {
                    Session["username"]=txtUser.Text.Trim();
                    Response.Redirect("Dashboard.aspx");

                }
                else
                {
                    lblError.Visible = true;
                }

            }   
        }
    }
}