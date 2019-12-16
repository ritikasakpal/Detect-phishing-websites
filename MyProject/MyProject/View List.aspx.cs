using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

namespace MyProject
{
    public partial class View_List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.SearchCustomers();
            }
        }
        private void SearchCustomers()
        {
            try
            {
                string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    string sql = "select * from Register ";
                    if (!string.IsNullOrEmpty(TextBox1.Text.Trim()))
                    {
                        sql += " WHERE UserName LIKE @username ";
                        cmd.Parameters.AddWithValue("@username", TextBox1.Text.Trim());
                    }
                    cmd.CommandText = sql;
                    cmd.Connection = con;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        GridView2.DataSource = dt;
                        GridView2.DataBind();
                    }
                }
                }
            }
            catch (Exception z)
            {
                Response.Write(z.Message);
            }
        }
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            this.SearchCustomers();
        }
        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
     
        protected void Button1_Click(object sender, EventArgs e)
        {

            this.SearchCustomers();

        }
    }
}