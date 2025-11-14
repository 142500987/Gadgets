using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gadgets
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["codes"].ToString();
            Label2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label2.Visible = true;
        }
    }
}