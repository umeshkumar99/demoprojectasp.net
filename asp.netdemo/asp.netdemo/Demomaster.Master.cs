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
    public partial class Demomaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GetTreeViewRights();
                GetMenuViewRights();
            }
        }


        private void GetTreeViewRights()
        {
            string connStr = ConfigurationManager.ConnectionStrings["PartitionTestConnectionString"].ToString();
            SqlConnection sqlConn = new SqlConnection(connStr);
            SqlDataAdapter da = new SqlDataAdapter("usp_TreeGet", sqlConn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            ds.Relations.Add("ChildTreerows", ds.Tables[0].Columns["RightsID"], ds.Tables[0].Columns["ParentID"]);
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (string.IsNullOrEmpty(dr["ParentID"].ToString()))
                {
                    TreeNode parentNode = new TreeNode();
                    parentNode.Text = dr["RightsDesc"].ToString();
                    parentNode.NavigateUrl = dr["URL"].ToString();


                    DataRow[] childrows = dr.GetChildRows("ChildTreerows");
                    foreach (DataRow chrows in childrows)
                    {

                        TreeNode trchildNode = new TreeNode();
                        trchildNode.Text = chrows["RightsDesc"].ToString();
                        trchildNode.NavigateUrl = chrows["URL"].ToString();
                        parentNode.ChildNodes.Add(trchildNode);
                    }
                    TreeView1.Nodes.Add(parentNode);

                }
            }
        }


        private void GetMenuViewRights()
        {
            string connStr = ConfigurationManager.ConnectionStrings["PartitionTestConnectionString"].ToString();
            SqlConnection sqlConn = new SqlConnection(connStr);
            SqlDataAdapter da = new SqlDataAdapter("usp_TreeGet", sqlConn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            ds.Relations.Add("ChildTreerows", ds.Tables[0].Columns["RightsID"], ds.Tables[0].Columns["ParentID"]);
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (string.IsNullOrEmpty(dr["ParentID"].ToString()))
                {
                    MenuItem parentNode = new MenuItem();
                     
                    parentNode.Text= dr["RightsDesc"].ToString();
                    parentNode.NavigateUrl = dr["URL"].ToString();


                    DataRow[] childrows = dr.GetChildRows("ChildTreerows");
                    foreach (DataRow chrows in childrows)
                    {

                        MenuItem trchildNode = new MenuItem();
                        trchildNode.Text = chrows["RightsDesc"].ToString();
                        trchildNode.NavigateUrl = chrows["URL"].ToString();
                        parentNode.ChildItems.Add(trchildNode);
                    }
                //    TreeView1.Nodes.Add(parentNode);
                    Menu1.Items.Add(parentNode);

                }
            }
        }
    }
    }