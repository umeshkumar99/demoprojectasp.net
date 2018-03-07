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
    public partial class DataGridMultiple : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string connStr = ConfigurationManager.ConnectionStrings["PartitionTestConnectionString"].ToString();
                SqlConnection sqlConn = new SqlConnection(connStr);
                SqlDataAdapter da = new SqlDataAdapter("usp_StudentsGet", sqlConn);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                da.SelectCommand.Parameters.AddWithValue("@course", "Oracle 10g");
                DataSet ds = new DataSet();
                da.Fill(ds);
                GrdSudents.DataSource = ds.Tables[0];
                GrdSudents.DataBind();
                GrdPhotoDetails.DataSource = ds.Tables[1];
                GrdPhotoDetails.DataBind();
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        protected void GrdSudents_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //Response.Write( e.Row.Cells[1].Text.ToString());
            Response.Write(e.Row.RowIndex.ToString()+"<br/>");
        }

        protected void GrdSudents_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}