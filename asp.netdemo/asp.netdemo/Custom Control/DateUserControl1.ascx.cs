using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebApplication2.Custom_Control
{
    public partial class DateUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
                CalenderVissiblitychanged VisibilityEvenydata = new CalenderVissiblitychanged(false);
                CalenderVissiblitychangedEventHandler1(VisibilityEvenydata);
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtDate.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
            CalenderVissiblitychanged VisibilityEvenydata = new CalenderVissiblitychanged(false);
            CalenderVissiblitychangedEventHandler1(VisibilityEvenydata);
            

        }

       

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible == true)
            {
                Calendar1.Visible = false;
                CalenderVissiblitychanged VisibilityEvenydata = new CalenderVissiblitychanged(false);
                CalenderVissiblitychangedEventHandler1(VisibilityEvenydata);
            }
            else
            {
                Calendar1.Visible = true;
                CalenderVissiblitychanged VisibilityEvenydata = new CalenderVissiblitychanged(true);
                CalenderVissiblitychangedEventHandler1(VisibilityEvenydata);
            }
        }
        
              public string ImageUrl
        {
            get
            {
                return ImageButton1.ImageUrl;
            }
            set
            {
                ImageButton1.ImageUrl = value;
            }

        }
        public string SelectedDate
        {
            get
            {
                return txtDate.Text;
            }
            set
            {
                txtDate.Text = value;
            }

        }
        public string lblcontroltype

        {

            get { return lbldatetype.Text; }
            set { lbldatetype.Text = value; }
        }
        public Unit imgaewidth
        {
            get { return  ImageButton1.Width; }
            set { ImageButton1.Width = value; }
        }

        public Unit imgaeHeight
        {
            get { return ImageButton1.Height; }
            set { ImageButton1.Height = value; }
        }
        //      public string ShowDateText
        //{
        //    get
        //    {
        //        return Button1.Text;
        //    }
        //    set
        //    {
        //        Button1.Text = value;
        //    }
        //}


        protected virtual void CalenderVissiblitychangedEventHandler1(CalenderVissiblitychanged e)
        {
            if (CalenderVissiblitychangedEvent != null)
            {
                CalenderVissiblitychangedEvent(this, e);
            }
        }
        
        public event CalenderVissiblitychangedEventHandler CalenderVissiblitychangedEvent;
    }



    public class CalenderVissiblitychanged: EventArgs
    {

        private bool _IsCalenderVisible;
        public bool  IsCalenderVisible
        {
            get
            {
                return this._IsCalenderVisible;
            }
        }
        public CalenderVissiblitychanged(bool iscalendervisible)
        {

            this._IsCalenderVisible = iscalendervisible;
        }
    }

    public delegate void CalenderVissiblitychangedEventHandler(object sender, CalenderVissiblitychanged e);

}