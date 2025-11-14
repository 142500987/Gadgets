using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gadgets
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(System.Object sender, System.EventArgs e)
        {
            string Username;
            string Password;

            Username = TxtUsername.Text;
            Password = TxtPassword.Text;
            for (int i = 0; i < GridView1.Rows.Count; i++)
                if ((Username == GridView1.Rows[i].Cells[1].Text) && (Password == GridView1.Rows[i].Cells[3].Text))
                {
                    Response.Redirect("Index1.aspx");
                }
        }

        protected void btnretry_Click(object sender, System.EventArgs e)
        {
            TxtUsername.Text = "";
            TxtPassword.Text = "";
        }

        protected void TxtUsername_TextChanged(System.Object sender, System.EventArgs e)
        {

        }
    }
}