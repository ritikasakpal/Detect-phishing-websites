using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyProject
{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
          
                TextBox1.Text = RadioButton2.Text;
            
        
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            TextBox1.Text = RadioButton1.Text;
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            TextBox1.Text = RadioButton3.Text;
        }

        protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
        {
            TextBox1.Text = RadioButton4.Text;
        }

        protected void RadioButton5_CheckedChanged(object sender, EventArgs e)
        {
            TextBox1.Text = RadioButton5.Text;
        }

        protected void RadioButton6_CheckedChanged(object sender, EventArgs e)
        {
            TextBox2.Text = RadioButton6.Text;
        }

        protected void RadioButton7_CheckedChanged(object sender, EventArgs e)
        {
            TextBox2.Text = RadioButton7.Text;
        }

        protected void RadioButton8_CheckedChanged(object sender, EventArgs e)
        {
            TextBox6.Text = RadioButton8.Text;
        }

        protected void RadioButton9_CheckedChanged(object sender, EventArgs e)
        {
            TextBox6.Text = RadioButton9.Text;
        }

        protected void RadioButton10_CheckedChanged(object sender, EventArgs e)
        {
            TextBox6.Text = RadioButton10.Text;
        }

        protected void RadioButton11_CheckedChanged(object sender, EventArgs e)
        {
            TextBox6.Text = RadioButton11.Text;
        }

        protected void RadioButton12_CheckedChanged(object sender, EventArgs e)
        {
            TextBox6.Text = RadioButton12.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con2 = new SqlConnection();
                con2.ConnectionString = @"Data Source = desktop-i7io25e ; Initial Catalog=phishing;Integrated Security = true;";
                string query2 = "insert into Feed (Q1,Q2,Q3,Q4,Q5,Q6) VALUES (@q1,@q2,@q3,@q4,@q5,@q6);";
                con2.Open();
                SqlCommand cmd2 = new SqlCommand(query2, con2);
                cmd2.Parameters.AddWithValue("@q1", TextBox1.Text);
                cmd2.Parameters.AddWithValue("@q2", TextBox2.Text);
                cmd2.Parameters.AddWithValue("@q3", TextBox3.Text);
                cmd2.Parameters.AddWithValue("@q4", TextBox4.Text);
                cmd2.Parameters.AddWithValue("@q5", TextBox5.Text);
                cmd2.Parameters.AddWithValue("@q6", TextBox6.Text);
              SqlDataReader dr2 = cmd2.ExecuteReader();
         
               


                    Response.Write("Feedback Submit");
             
                

                //    Response.Write("Feedback Submit");
                //}
                con2.Close();


            }

            catch (Exception z)
            {
                Response.Write(z.Message);
            }

        }
       
    }
    }
