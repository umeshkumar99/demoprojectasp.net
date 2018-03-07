using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebApplication2
{
    public partial class RunTimeControls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddcontrol_Click(object sender, EventArgs e)
        {
            int noofcontrols = Convert.ToInt32( txtNofControls.Text);
            foreach (ListItem li in lstControlType.Items)
            {
                if (li.Selected)
                {
                    if (li.Value == "Lable")
                    {
                        for (int i = 1; i <= noofcontrols; i++)
                        {
                            Label lbl = new Label();
                            lbl.Text = "Lable:" + i.ToString();
                            pnLable.Controls.Add(lbl);
                        }
                    }

                    if (li.Value == "TextBox")
                    {
                        for (int i = 1; i <= noofcontrols; i++)
                        {
                            TextBox lbl = new TextBox();
                            lbl.Text = "TextBox:" + i.ToString();
                            pnlTextBox.Controls.Add(lbl);
                        }
                    }

                    if (li.Value == "Buttons")
                    {
                        for (int i = 1; i <= noofcontrols; i++)
                        {
                            Button lbl = new Button();
                            lbl.Text = "Buttons:" + i.ToString();
                           pnlButton .Controls.Add(lbl);
                        }
                    }
                }
            }
        }
    }
}