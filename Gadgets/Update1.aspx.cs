using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gadgets
{
    public partial class Update1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (GridView1.Rows.Count > 0)
            {
                txsearch.Text = GridView1.Rows[0].Cells[0].Text;
                txsearch0.Text = GridView1.Rows[0].Cells[0].Text;
                txsearch1.Text = GridView1.Rows[0].Cells[1].Text;
                txsearch2.Text = GridView1.Rows[0].Cells[2].Text;
                txsearch3.Text = GridView1.Rows[0].Cells[3].Text;
                txsearch4.Text = GridView1.Rows[0].Cells[4].Text;
                txsearch5.Text = GridView1.Rows[0].Cells[5].Text;
                txsearch6.Text = GridView1.Rows[0].Cells[6].Text;
                txsearch7.Text = GridView1.Rows[0].Cells[7].Text;
                txsearch8.Text = GridView1.Rows[0].Cells[8].Text;
            }
        }
    }
}