using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AnjileeSalonWebApp
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var email = txtemail.Text;
            var name = txtname.Text;
            var message = txtmessage.Text;
            var inquiry = ddlInquiryType.SelectedValue;

            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V3OM59N;Initial Catalog=anjileesalonDb;Integrated Security=True;TrustServerCertificate=True");
            conn.Open();
            string Query = "Insert into ContactUs Values('" + name + "', '" + email + "', '" + message + "', '" + inquiry + "')";
            SqlCommand cmd = new SqlCommand(Query, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            txtname.Text = "";
            txtemail.Text = "";
            txtmessage.Text = "";
            string script = "alert('Thank you for contacting us! We will get back to you soon.');";
            ClientScript.RegisterStartupScript(this.GetType(), "MessageSendAlert", script, true);
           
            
        }
        protected void refreshes()
        {
            
        }
    }
}