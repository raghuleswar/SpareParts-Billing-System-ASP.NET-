using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace LoginPage
{
    public partial class SignUpCSS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkBlank())
            {

            }
            else
            {
                if (checkPasswordMatch())
                {
                    if (checkUserName())
                    {
                        Label1.Text = "UserName already available, please use other name!";
                        Label1.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        Label1.Text = "";
                        if (registerNewUser())
                        {
                            Label2.Text = "New User " + TextBox1.Text + " has been registered successfully";
                            Label2.ForeColor = System.Drawing.Color.Green;
                            clearAllFields();
                            Response.Redirect("LoginCss.aspx");
                        }
                        else
                        {
                            Label2.Text = "Error occured while saving data in DB!!";
                            Label2.ForeColor = System.Drawing.Color.Red;
                        }

                    }
                }

            }
        }
        void clearAllFields()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            Label1.Text = "";
            Label2.Text = "";
            Label3.Text = "";

        }

        bool checkPasswordMatch()
        {
            if (TextBox2.Text == TextBox3.Text)
            {
                Label3.Text = "";
                return true;
            }
            else
            {
                Label3.Text = "Password doesn't match with Confirm Password";
                Label3.ForeColor = System.Drawing.Color.Red;
                return false;
            }
        }

        bool checkBlank()
        {
            if (TextBox1.Text == "")
            {
                Label2.Text = "Please enter the username";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox2.Text == "")
            {
                Label2.Text = "Please enter the Password";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox3.Text == "")
            {
                Label2.Text = "Please enter the Confirm password";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox4.Text == "")
            {
                Label2.Text = "Please enter the Name";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox5.Text == "")
            {
                Label2.Text = "Please enter the Address";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox6.Text == "")
            {
                Label2.Text = "Please enter the City";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox7.Text == "")
            {
                Label2.Text = "Please enter the State";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox8.Text == "")
            {
                Label2.Text = "Please enter the mobile number";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox9.Text == "")
            {
                Label2.Text = "Please enter the email address";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            Label2.Text = "";


            return false;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkUserName())
            {
                Label1.Text = "UserName already available, please use other name!";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
        bool registerNewUser()
        {
            if (createLoginAccount())
            {
                String query = "insert into Users(username,customername,address,city,state,mobilenumber,emailaddress) values('" + TextBox1.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "')";
                String mycon = "Data Source=.\\SQLEXPRESS;Initial Catalog=SpareSystem;Integrated security=true";
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                con.Close();
                return true;
            }
            else
            {
                return false;
            }
        }
        bool createLoginAccount()
        {
            String query = "insert into Login(username,password) values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
            String mycon = "Data Source=.\\SQLEXPRESS;Initial Catalog=SpareSystem;Integrated security=true";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            return true;
        }


        bool checkUserName()
        {
            Boolean userNameAvailable = false;
            String mycon = "Data Source=.\\SQLEXPRESS;Initial Catalog=SpareSystem;Integrated security=true";
            String myQuery = "Select * from Users where username='" + TextBox1.Text + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myQuery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                userNameAvailable = true;
            }
            else
            {
                Label1.Text = "This UserName is valid!";
                Label1.ForeColor = System.Drawing.Color.Green;

            }
            con.Close();
            return userNameAvailable;
        }
    }
}