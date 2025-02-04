using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AnjileeSalonWebApp
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddClickSubmit(object sender, EventArgs e)
        {
            var email = txtemail.Text;
            var name = txtname.Text;
            var message = txtmessage.Text;

            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V3OM59N;Initial Catalog=anjileesalonDb;Integrated Security=True;TrustServerCertificate=True");
            conn.Open();
            string Query = "Insert into message(name, email, message) Values('" + name + "', '" + email + "', '" + message + "')";
            SqlCommand cmd = new SqlCommand(Query, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            string script = "alert('Thank you for contacting us! We will get back to you soon.');";
            ClientScript.RegisterStartupScript(this.GetType(), "MessageSendAlert", script, true);

        }
    }
}