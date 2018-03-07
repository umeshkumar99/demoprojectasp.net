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
    public partial class DataGridDemo1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                FillGrid();
                lblmsg.Text = "DataLoaded Successfully";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetDatafromCache();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            if (Cache["Dataset"] != null)
            {
                DataSet ds = (DataSet)Cache["Dataset"];
                GridViewRow dr1 = GridView1.Rows[e.RowIndex];
                DataTable dt = ds.Tables["StudentDetails"];
                DataRow dr = dt.Rows[dr1.DataItemIndex];

             //   DataRow dr = ds.Tables["StudentDetails"].Rows.Find(e.Keys["sno"]);
                dr.Delete();

                Cache.Insert("Dataset", ds, null, DateTime.Now.AddHours(10), System.Web.Caching.Cache.NoSlidingExpiration);

                GridView1.EditIndex = -1;
                GetDatafromCache();
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            if (Cache["Dataset"] != null)
            {
                DataSet ds = (DataSet)Cache["Dataset"];
                GridViewRow dr1 = GridView1.Rows[e.RowIndex];
                DataTable dt = ds.Tables["StudentDetails"];
                DataRow dr = dt.Rows[dr1.DataItemIndex];
                dr["sname"] = e.NewValues["sname"];
                dr["course"] = e.NewValues["course"];
                dr["fee"] = e.NewValues["fee"];
                Cache.Insert("Dataset", ds, null, DateTime.Now.AddHours(10), System.Web.Caching.Cache.NoSlidingExpiration);

                GridView1.EditIndex = -1;
                GetDatafromCache();
            }
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
           GridView1.EditIndex = e.NewEditIndex;
            
            GetDatafromCache();

        }
           private void FillGrid()
        {
            string connStr = ConfigurationManager.ConnectionStrings["PartitionTestConnectionString"].ToString();
            SqlConnection sqlConn = new SqlConnection(connStr);
            SqlDataAdapter da = new SqlDataAdapter("SELECT sno ,sname  ,course,fee  FROM student", sqlConn);
            DataSet ds = new DataSet();
            da.Fill(ds,"StudentDetails");
       //     ds.Tables["StudentDetails"].PrimaryKey = new DataColumn[] {ds.Tables["StudentDetails"].Columns["sno"] };
            Cache.Insert("Dataset", ds, null, DateTime.Now.AddHours(10), System.Web.Caching.Cache.NoSlidingExpiration);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
        private void GetDatafromCache()
        {
            if(Cache["Dataset"]!=null)
            {
                DataSet ds = (DataSet)Cache["Dataset"];
                GridView1.DataSource = ds;
                GridView1.DataBind();
             }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["PartitionTestConnectionString"].ToString();
            SqlConnection sqlConn = new SqlConnection(connStr);
            SqlDataAdapter da = new SqlDataAdapter("SELECT sno ,sname  ,course,fee  FROM student", sqlConn);
            //DataSet ds = new DataSet();
            //da.Fill(ds, "StudentDetails");

            DataSet ds = (DataSet)Cache["Dataset"];
            string updateCmd = "Update student set sname=@sname, course=@course, fee=@fee where sno=@sno";
            SqlCommand scmd = new SqlCommand(updateCmd, sqlConn);
            scmd.Parameters.Add("@sname", SqlDbType.VarChar, 100, "sname");
            scmd.Parameters.Add("@course", SqlDbType.VarChar, 100, "course");
            scmd.Parameters.Add("@fee", SqlDbType.Float, 0, "fee");
            scmd.Parameters.Add("@sno", SqlDbType.Int, 0, "sno");
            da.UpdateCommand = scmd;

            string InsertCmd = "Insert into  student(sno,sname,course,fee) values (@sno,@sname, @course, @fee )";
            SqlCommand Icmd = new SqlCommand(InsertCmd, sqlConn);
            Icmd.Parameters.Add("@sno", SqlDbType.Int, 0, "sno");
            Icmd.Parameters.Add("@sname", SqlDbType.VarChar, 100, "sname");
            Icmd.Parameters.Add("@course", SqlDbType.VarChar, 100, "course");
            Icmd.Parameters.Add("@fee", SqlDbType.Float, 0, "fee");

            da.InsertCommand = Icmd;

            string strdelete = "Delete from student where sno= @sno";
            SqlCommand sdletecmd = new SqlCommand(strdelete, sqlConn);
            sdletecmd.Parameters.Add("@sno", SqlDbType.Int, 0, "sno");
            da.DeleteCommand = sdletecmd;


            da.Update(ds, "StudentDetails");
            lblmsg.Text = "Data has been updated on DB";


        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            

        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            DataSet ds = (DataSet)Cache["Dataset"];
            DataTable dt = ds.Tables["StudentDetails"];
            DataRow dr = dt.NewRow();
            dr["sno"] = 12;
            dr["sname"] = "Hari Thakur";
            dr["course"] = "AngularJS 2.0";
            dr["fee"] = 25000;
            // ds.Tables[0].Rows.Add(dr);
            dt.Rows.Add(dr);
            Cache.Insert("Dataset", ds, null, DateTime.Now.AddHours(10), System.Web.Caching.Cache.NoSlidingExpiration);
            GetDatafromCache();
        }
    }
}