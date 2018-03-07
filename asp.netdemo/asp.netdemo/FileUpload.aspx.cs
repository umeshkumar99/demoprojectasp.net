using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebApplication2
{
    public partial class FileUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string fileextension = System.IO.Path.GetExtension(FileUpload1.FileName);
               
                if (fileextension.ToLower() != ".doc" && fileextension.ToLower() != ".docx" &&   fileextension.ToLower() != ".pdf")
                {
                    lblmess.Text = "Only files with extension .doc or docx are allowed";
                    lblmess.BackColor = System.Drawing.Color.Red;
                }
                else
                {
                    int filesize = FileUpload1.PostedFile.ContentLength;
                    if (filesize > 100*1024)
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/Uploads/" + FileUpload1.FileName));
                     
                        lblmess.Text = "File Uploaded Successfully";
                        lblmess.BackColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        lblmess.Text = "File size does not meet minimum criteria of 1024kb";
                        lblmess.BackColor = System.Drawing.Color.Red;
                    }

                }
            }
            else
            {
                lblmess.Text = "Please select a file to upload";
                lblmess.BackColor = System.Drawing.Color.Red;
            }
        }
    }
}