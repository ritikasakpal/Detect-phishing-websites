using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
namespace MyProject
{
    public partial class CheckWebsite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            char[] abc = new char[50];
            int x = -1;

            String toCheck = TextBox1.Text;
            String[] checkFromString = new String[500];

  


            char[] toCheckArray = toCheck.ToCharArray();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source = desktop-i7io25e ; Initial Catalog=phishing;Integrated Security = true;";
            con.Open();
            string query = "Select Word From BlackWord;";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
       
            while (dr.HasRows && dr.Read())
            {
                x++;
          
                checkFromString[x] = dr["Word"].ToString();
           
            }
            
     
            foreach (String check in checkFromString)
            {
                if (check != null && toCheck.Contains(check))
                {
                    Boolean flag = true;
                    Label2.Text += "\"" + check + "\"is the black key that is existing" + "\t";
                }
            }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            char[] abcd = new char[50];
            int x = -1;

            String toChecks = TextBox1.Text;
            String[] checksFromString = new String[500];

    


            char[] toChecksArray = toChecks.ToCharArray();
            SqlConnection con1 = new SqlConnection();
            con1.ConnectionString = @"Data Source = desktop-i7io25e; Initial Catalog=phishing;Integrated Security = true";
            string query1 = "Select Web_URL From BlackWeb;";
            con1.Open();
            SqlCommand cmd1 = new SqlCommand(query1, con1);
            SqlDataReader dr = cmd1.ExecuteReader();
         
            while (dr.HasRows && dr.Read())
            {
                x++;
          
                checksFromString[x] = dr["Web_URL"].ToString();
          
            }
           
           
            foreach (String checks in checksFromString)
            {
                if (checks != null && toChecks.Contains(checks))
                {
                    Boolean flag = true;
                    Label3.Text += "\"" + checks + "\"is the phishing website " + "\t";
                }
            }
            con1.Close();
        }
    }
}
  