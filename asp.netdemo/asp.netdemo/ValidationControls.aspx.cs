using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebApplication2
{
    public partial class ValidationControls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
                Response.Write("Page passess all validation");
            else
                Response.Write("Page failed validation");
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string str = args.Value;
            int number;
            bool num = int.TryParse(str, out number);
            if (num)
            {
                if (str.Length != 10)
                {
                    CustomValidator1.ErrorMessage = "lenght not equal to";
                    //Response.Write("lenght greater than 10");
                    args.IsValid = false;
                }
            }
            else
            {
                CustomValidator1.ErrorMessage = "Invalid Number";
                args.IsValid = false;
                //  Response.Write("invalid number");
            }
        }

        protected void txtnum_TextChanged(object sender, EventArgs e)
        {

        }
    }
}