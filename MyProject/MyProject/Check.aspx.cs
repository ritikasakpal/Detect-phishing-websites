using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyProject
{
    public partial class Check : System.Web.UI.Page
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
                string query2 = "insert into BlackWeb (Web_URL) VALUES (@URL);";
                con2.Open();
                SqlCommand cmd2 = new SqlCommand(query2, con2);
                cmd2.Parameters.AddWithValue("@URL", TextBox1.Text);
                SqlDataReader dr2 = cmd2.ExecuteReader();
                if (dr2.Read())
                {
                    // Session["Username"] = dr2["UserName"];
                    //    Result.Text = "SUCCESS     " + dr.Read();
                    //    Result.ForeColor = Color.GhostWhite;
                    //    Result.Visible = true;
                    Response.Write("Website added successfully ");
                }
                else
                {
                    //    Result.Text = "SUCCESS";
                    //    Result.ForeColor = Color.GhostWhite;
                    //    Result.Visible = true;
                    Response.Write("Website added successfully ");
                }
                con2.Close();

                //Result.Text = "Success";
                //Result.ForeColor = Color.GhostWhite;
                //Result.Visible = true;
            }
            //catch (Exception exception)
            //{
            //    Console.WriteLine(exception.Message);
            //    //Result.Text = exception.Message;
            //    //Result.Visible = true;
            //}
            catch (Exception z)
            {
                Response.Write(z.Message);
            }

        }
    }
    }