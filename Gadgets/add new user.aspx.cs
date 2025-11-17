using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gadgets
{
    public partial class add_new_user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                int oldid = 0;
                int newid = 0;

                for (int i = 0; i < GridView1.Rows.Count; i++)
                {
                    oldid = Convert.ToInt16(GridView1.Rows[i].Cells[0].Text);

                }
                newid = oldid + 1;
                tbsearch1.Text = newid.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
            GridView1.Visible = true;
        }
    }
}