using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace AnjileeSalonWebApp
{
    public partial class Services : System.Web.UI.Page
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["SalonDBConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadServices();
            }
        }

        private void LoadServices()
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM Product";
                SqlDataAdapter adapter = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                

            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Product (productName, price) VALUES (@ServiceName, @Price)";
                SqlCommand cmd = new SqlCommand(query, conn);
     
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }

            LoadServices();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {


            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM Product WHERE productId = @ServiceID";
                SqlCommand cmd = new SqlCommand(query, conn);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }

            LoadServices();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                int index = Convert.ToInt32(e.CommandArgument);
            
            }
        }
    }
}