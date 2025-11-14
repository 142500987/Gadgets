using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gadgets
{
    public partial class Change : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (GridView1.Rows.Count > 0)
            {
                tbsearch.Text = GridView1.Rows[0].Cells[0].Text;
                tbsearch1.Text = GridView1.Rows[0].Cells[0].Text;
                tbsearch2.Text = GridView1.Rows[0].Cells[1].Text;
                tbsearch3.Text = GridView1.Rows[0].Cells[2].Text;
                tbsearch4.Text = GridView1.Rows[0].Cells[3].Text;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
        }
    }
}