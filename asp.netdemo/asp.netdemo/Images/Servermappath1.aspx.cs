using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace DemoWebApplication2
{
    public partial class Servermappath1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Response.Write(Server.MapPath(".") + "<BR/>");
                Response.Write(Server.MapPath("..") + "<BR/>");
                Response.Write(Server.MapPath("~") + "<BR/>");
                Response.Write(Server.MapPath("../") + "<BR/>");
                DataSet ds = new DataSet();
                ds.ReadXml(Server.MapPath("~/App_Data/Countrydata.xml"));
                DDCountry.DataTextField = "countryName";
                DDCountry.DataValueField = "countryID";
                DDCountry.DataSource = ds;

                //Image1.ImageUrl = "~/Images/angularjs1.png";
            }
        }
    }
}