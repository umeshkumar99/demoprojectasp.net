using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevelopmentDemo
{
    public partial class Session_app : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TextBox1.Text = Application["NOofUsers"].ToString();
                // string str=Request.Form["txt1"].ToString();
                //Session.SessionID
                //Session["MyName"] = "Hari";
                //Session.Abandon();
                if(Request.QueryString["fname"]!=null)
               txtFname.Text= Request.QueryString["fname"].ToString();
                if (Request.QueryString["lname"] != null)
                    txtLname.Text = Request.QueryString["lname"].ToString();

                if (Request.Cookies["fname"] != null)
                    txtfnameC.Text = Request.Cookies["fname"].Value.ToString();
                if (Request.Cookies["lname"] != null)
                    txtlnameC.Text = Request.Cookies["lname"].Value.ToString();

                if (Session["fname"] != null)
                    txtfnameS.Text = Session["fname"].ToString();
                if (Session["lname"] != null)
                    txtlnameS.Text = Session["lname"].ToString();
                Page prpage = Page.PreviousPage;
                if(prpage!=null && prpage.IsCrossPagePostBack)
                {
                    TextBox txt = (TextBox)prpage.FindControl("txt1");
                    txtFname.Text= txt.Text.ToString();
                    txt = (TextBox)prpage.FindControl("Text1");
                    txtFname.Text = txt.Text.ToString();
                  
                }

            }
        }
    }
}