using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebApplication2
{
    public partial class DemoUserControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DateUserControl1.SelectedDate = DateTime.Now.ToShortDateString();
                DateUserControl1.ImageUrl = "~/Images/angularjs1.png";
                DateUserControl2.SelectedDate = DateTime.Now.ToLongDateString();

                //DateUserControl1.ShowDateText = "ShowDate & Time";
                //DateUserControl1.CalenderVissiblitychangedEvent
         //       Button1.Click += new EventHandler(Button1_Click);
                
              //  DateUserControl1.CalenderVissiblitychangedEvent += new Custom_Control.CalenderVissiblitychangedEventHandler( DateUserControl1_CalenderVissiblitychangedEvent);
            //    DateUserControl1.CalenderVissiblitychangedEvent += new Custom_Control.CalenderVissiblitychangedEventHandler(DateUserControl1_CalenderVissiblitychangedEvent1);
                //  DateUserControl1.CalenderVissiblitychangedEvent += new Custom_Control.CalenderVissiblitychangedEventHandler (DateUserControl1_CalenderVissiblitychangedEvent);
                DateUserControl2.CalenderVissiblitychangedEvent +=new Custom_Control.CalenderVissiblitychangedEventHandler( DateUserControl2_CalenderVissiblitychangedEvent);
            }  
        }

        private void DateUserControl2_CalenderVissiblitychangedEvent(object sender, Custom_Control.CalenderVissiblitychanged e)
        {
            Response.Write(e.IsCalenderVisible);
        }

        private void DateUserControl1_CalenderVissiblitychangedEvent(object sender, Custom_Control.CalenderVissiblitychanged e)
        {
           
            throw new NotImplementedException();
        }

        private void DateUserControl1_CalenderVissiblitychangedEvent1(object sender, Custom_Control.CalenderVissiblitychanged e)
        {
            Response.Write("Calender Visible is:" + e.IsCalenderVisible.ToString());
        }

        //protected void DateUserControl1_CalenderVissiblitychangedEvent(object sender, Custom_Control.CalenderVissiblitychangedEvent e)
        //{
        //    //  throw new NotImplementedException();
        //    Response.Write("Calender Visible is:" + e.IsCalenderVisible.ToString());
        //}

        //protected void Button1_Click1(object sender, EventArgs e)
        //{
        //    Response.Write(DateUserControl1.SelectedDate);
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write(DateUserControl1.SelectedDate);
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    Response.Write(DateUserControl1.SelectedDate);
        //}
    }
}