using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gadgets
{
    public partial class Delete1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }

        protected void btncon_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
            Label3.Visible = true;
        }

        protected void btndel_Click(object sender, EventArgs e)
        {
            Label2.Visible = true;
            btncon.Visible = true;
            btncan.Visible = true;
            GridView1.Visible = true;
        }

        protected void btncan_Click(object sender, EventArgs e)
        {
            Label3.Visible = false;
            Label2.Visible = false;
            btncon.Visible = false;
            btncan.Visible = false;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}