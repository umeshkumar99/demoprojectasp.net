using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebApplication2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                //TextBox1.Text = "Enter First Name";
                //TextBox2.Text = "Enter First Name";
                //ListItem lst=new ListItem()
                ddGender.Items.Add("Select Gender");
                ddGender.SelectedValue = "Select Gender";
                

                    //                ddGender.Items.IndexOf()

            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            setDDData(ddGender, txtlname.Text);
        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            txtaddress.Text = "";
            txtfname.Text = "";
            txtlname.Text = "";
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            
        }

        protected void ddGender_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Write(ddGender.SelectedValue);
            
        }

        protected void setDDData(DropDownList dd, string str)
        {
            for(int i=0;i<dd.Items.Count;i++)
            {
                if(dd.Items[i].Text==str)
                {
                    dd.SelectedIndex = i;
                }
            }
        }

        protected void caldob_SelectionChanged(object sender, EventArgs e)
        {
            txtdob.Text = caldob.SelectedDate.ToLongDateString();
            caldob.Visible = false;

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (caldob.Visible == true)
                caldob.Visible = false;
            else
                caldob.Visible = true;
        }

        protected void ChangePassword1_ChangedPassword(object sender, EventArgs e)
        {

        }

        protected void ChangePassword1_SendingMail(object sender, MailMessageEventArgs e)
        {

        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {

        }
    }
}