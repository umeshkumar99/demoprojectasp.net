using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebApplication2
{
    public partial class DataGridRowDataBound : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
          //  e.Row.BackColor = System.Drawing.Color.Azure;

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                
                if (e.Row.Cells[4].Text == "US")
                {
                    int salary = Convert.ToInt32(e.Row.Cells[3].Text);
                    string formattedString = string.Format(new System.Globalization.CultureInfo("en-US"), "{0:c}", salary);
                    e.Row.Cells[3].Text = formattedString;
                    e.Row.Cells[3].BackColor = System.Drawing.Color.Yellow;
                }
                else if (e.Row.Cells[4].Text == "UK")
                {
                    int salary = Convert.ToInt32(e.Row.Cells[3].Text);
                    string formattedString = string.Format(new System.Globalization.CultureInfo("en-GB"), "{0:c}", salary);
                    e.Row.Cells[3].Text = formattedString;
                    e.Row.Cells[3].BackColor = System.Drawing.Color.Green;
                    e.Row.Cells[3].ForeColor = System.Drawing.Color.White;
                }
                else if (e.Row.Cells[4].Text == "India")
                {
                    int salary = Convert.ToInt32(e.Row.Cells[3].Text);
                    string formattedString = string.Format(new System.Globalization.CultureInfo("en-IN"), "{0:c}", salary);
                    e.Row.Cells[3].Text = formattedString;
                    e.Row.Cells[3].BackColor = System.Drawing.Color.Blue;
                    e.Row.Cells[3].ForeColor = System.Drawing.Color.White;
                }
                else if (e.Row.Cells[4].Text == "South Africa")
                {
                    int salary = Convert.ToInt32(e.Row.Cells[3].Text);
                    string formattedString = string.Format(new System.Globalization.CultureInfo("en-ZA"), "{0:c}", salary);
                    e.Row.Cells[3].Text = formattedString;
                    e.Row.Cells[3].BackColor = System.Drawing.Color.Magenta;
                    e.Row.Cells[3].ForeColor = System.Drawing.Color.White;
                }
                else if (e.Row.Cells[4].Text == "Malaysia")
                {
                    int salary = Convert.ToInt32(e.Row.Cells[3].Text);
                    string formattedString = string.Format(new System.Globalization.CultureInfo("en-MY"), "{0:c}", salary);
                    e.Row.Cells[3].Text = formattedString;
                    e.Row.Cells[3].BackColor = System.Drawing.Color.Violet;
                    e.Row.Cells[3].ForeColor = System.Drawing.Color.White;
                }
            }

        }
    }
}