using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevelopmentDemo
{
    public partial class PageLfeCycle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Page Load event<BR/>");
            //if(!Page.IsPostBack)
            //{
            //    Response.Cookies.Clear();
            //}
           
            
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            Response.Write("Page Init event<BR/>");
        }
        protected void Page_PreInit(object sender, EventArgs e)
        {
            Response.Write("Page PreInit event<BR/>");
        }
        protected void Page_InitComplete(object sender, EventArgs e)
        {
            Response.Write("Page init Complete event<BR/>");
        }

        protected void Page_PreLoad(object sender, EventArgs e)
        {
            Response.Write("Page Pre Load event<BR/>");
        }

        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            Response.Write("Page Load Complete event<BR/>");
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            Response.Write("Page Pre Render event<BR/>");
        }
        protected void Page_PreRenderComplete(object sender, EventArgs e)
        {
            Response.Write("Page PreRenderComplete event<BR/>");
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
           // Response.Write("Page PreRenderComplete event");
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Session_app.aspx?fname=" + txt1.Text + "&lname=" + Text1.Text);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Session_app.aspx?fname=" + txt1.Text + "&lname=" + Text1.Text);
          
        
        }

        protected void btnSession_Click(object sender, EventArgs e)
        {
            if(Response.Cookies["fname"]!=null)
            Response.Cookies.Remove("fname");
            HttpCookie ck1 = new HttpCookie("fname", txt1.Text);
           // ck1.Expires = DateTime.Now.AddDays(10);
            Response.Cookies.Add(ck1);
           
            if (Response.Cookies["lname"] != null)
                Response.Cookies.Remove("lname");
            HttpCookie ck2 = new HttpCookie("lname", Text1.Text);
           // ck1.Expires = DateTime.Now.AddDays(10);
            Response.Cookies.Add(ck2);
            Response.Redirect("Session_app.aspx");
          
        }

        protected void btnSession_Click1(object sender, EventArgs e)
        {
            Session["fname"] = txt1.Text;
            Session["lname"] = Text1.Text;
            Response.Redirect("Session_app.aspx");
        }
        protected void btnRedirect_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("Session_app.aspx?fname=" + txt1.Text + "&lname=" + Text1.Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }
}