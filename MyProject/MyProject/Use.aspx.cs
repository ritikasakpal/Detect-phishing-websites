using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyProject
{
    public partial class Use : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source = desktop-i7io25e ; Initial Catalog=phishing;Integrated Security = true;";
                con.Open();
                string query = "select * from Register where UserName = @username and Password = @password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.Add(new SqlParameter("@username", TextBox1.Text));
                cmd.Parameters.Add(new SqlParameter("@password", TextBox2.Text));
                SqlDataReader DR = cmd.ExecuteReader();

                if (DR.Read())
                {


                    Session["username"] = DR["UserName"];
             
                    Response.Redirect("CheckWebsite.aspx");
                }
                else
                {
                    Response.Redirect("Error.aspx");
                }

                con.Close();

            }
            catch (Exception z)
            {
                Response.Write(z.Message);
            }
        }
    }
    }