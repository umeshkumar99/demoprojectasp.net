using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace DemoWebApplication2
{
    public partial class Repeater : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                FillGrid();
        }

        private void FillGrid()
        {
            string connStr = ConfigurationManager.ConnectionStrings["PartitionTestConnectionString"].ToString();
            SqlConnection sqlConn = new SqlConnection(connStr);
            SqlDataAdapter da = new SqlDataAdapter("SELECT sno ,sname  ,course,fee,photo1  FROM student", sqlConn);

            DataSet ds = new DataSet();
            da.Fill(ds, "StudentDetails");

            Repeater2.DataSource = ds;
            Repeater2.DataBind();

            //GridView1.DataSource = ds;
            //GridView1.DataBind();
            

            Repeater1.DataSource = ds;
            Repeater1.DataBind();
            //GridView1.DataSource = ds;
            //GridView1.DataBind();
            DataList1.DataSource = ds;
            DataList1.DataBind();



        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            
        }
    }
}