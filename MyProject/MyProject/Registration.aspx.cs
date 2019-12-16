using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace MyProject
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                
                SqlConnection con2 = new SqlConnection();
                con2.ConnectionString = @"Data Source = desktop-i7io25e ; Initial Catalog=phishing;Integrated Security = true;";
                string query2 = "insert into Register (User_ID,UserName,Email,Password,Mobile) VALUES (@UserId,@UserName,@Email,@Password,@Mobile);";
                con2.Open();
                SqlCommand cmd2 = new SqlCommand(query2, con2);
                cmd2.Parameters.AddWithValue("@UserId", TextBox1.Text);
                cmd2.Parameters.AddWithValue("@UserName", TextBox2.Text);
                cmd2.Parameters.AddWithValue("@Email", TextBox3.Text);
                cmd2.Parameters.AddWithValue("@Password", TextBox4.Text);
                cmd2.Parameters.AddWithValue("@Mobile", TextBox5.Text);
                SqlDataReader dr2 = cmd2.ExecuteReader();
            
                if (dr2.Read())
                {
                   
              
                    Response.Redirect("Home.aspx");
                }
                else
                {
                 
                    Response.Redirect("Home.aspx");
                }
                con2.Close();

             
            }
       
            catch (Exception z)
            {
                Response.Write(z.Message);
            }

        }
    }
}