using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Data;


namespace DemoWebApplication2
{
    public partial class ImageUploadinDB : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataSet ds; int rno = 0;
        MemoryStream ms;
        byte[] photo_aray;

        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["PartitionTestConnectionString"].ToString();
            con = new SqlConnection(connStr);

        }
        void loaddata()
        {
            adapter = new SqlDataAdapter("select sno,sname,course,fee,photo from student", con);
            adapter.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            ds = new DataSet(); adapter.Fill(ds, "student");
        }


        void showdata()
        {
            if (ds.Tables[0].Rows.Count > 0)
            {
                TextBox1.Text = ds.Tables[0].Rows[rno][0].ToString();
                TextBox2.Text = ds.Tables[0].Rows[rno][1].ToString();
                TextBox3.Text = ds.Tables[0].Rows[rno][2].ToString();
                TextBox4.Text = ds.Tables[0].Rows[rno][3].ToString();
                Image1.ImageUrl = null;
                if (ds.Tables[0].Rows[rno][4] != System.DBNull.Value)
                {
                    photo_aray = (byte[])ds.Tables[0].Rows[rno][4];
                    MemoryStream ms = new MemoryStream(photo_aray);
                    // Image1.Image = Image.FromStream(ms);
                }
            }
            else
                Response.Write("No Records");
        }
    }
}