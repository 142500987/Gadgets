using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gadgets
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            BtnYes.Visible = true;
            BtnCancel.Visible = true;
            Label3.Visible = true;
        }

        protected void btnyes_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
            ldlDone.Visible = true;
            TxtId.Text = " ";
        }
        protected void btncancel_click(object sender, EventArgs e)
        {
            ldlDone.Visible = false;
            BtnYes.Visible = false;
            BtnCancel.Visible = false;
            Label3.Visible = false;
        }

        protected void txtId_TextChanged(object sender, EventArgs e)
        {

        }
    }
}