using System;
using System.Web.UI;

namespace DemoWebApplication2
{
    public partial class NestedDataGridDemo : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                ContinentDataAccessLayer continent = new ContinentDataAccessLayer();

                GridView1.DataSource = ContinentDataAccessLayer.GetAllContinents();
                GridView1.DataBind();
            }

        }
    }
}