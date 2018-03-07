using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace DemoWebApplication2
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            //Session.Timeout = 10;
           

        }
        void Application_End(object sender, EventArgs e)
        {

        }
        void Session_Start(object sender, EventArgs e)
        {
            if (Application["NOofUsers"] == null)
            {
                Application["NOofUsers"] = 1;
            }
            else
            {
                Application["NOofUsers"] = Convert.ToInt32(Application["NOofUsers"]) + 1;
            }
        }
        void Session_End(object sender, EventArgs e)
        {
            if (Application["NOofUsers"] != null)
            {
                Application["NOofUsers"] = Convert.ToInt32(Application["NOofUsers"]) - 1;
            }
        }
    }
}