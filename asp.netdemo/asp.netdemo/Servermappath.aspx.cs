using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebApplication2
{
    public partial class Servermappath : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(Server.MapPath(".") + "<BR/>");
            //Response.Write(Server.MapPath("..") + "<BR/>");
            Response.Write(Server.MapPath("~") + "<BR/>");
            //Response.Write(Server.MapPath("../") + "<BR/>");
        }
    }
}