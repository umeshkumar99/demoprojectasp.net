using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebApplication2
{
    public partial class TemplateField : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void cbDeleteHeader_CheckedChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow gridViewRow in GridView1.Rows)
            {
                ((CheckBox)gridViewRow.FindControl("cbDelete")).Checked = ((CheckBox)sender).Checked;
            }
        }
        protected void cbDelete_CheckedChanged(object sender, EventArgs e)
        {

            CheckBox headerCheckBox =
                (CheckBox)GridView1.HeaderRow.FindControl("cbDeleteHeader");
            if (headerCheckBox.Checked)
            {
                headerCheckBox.Checked = ((CheckBox)sender).Checked;
            }
            else
            {
                bool allCheckBoxesChecked = true;
                foreach (GridViewRow gridViewRow in GridView1.Rows)
                {
                    if (!((CheckBox)gridViewRow.FindControl("cbDelete")).Checked)
                    {
                        allCheckBoxesChecked = false;
                        break;
                    }
                }
                headerCheckBox.Checked = allCheckBoxesChecked;
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            List<string> lstEmployeeIdsToDelete = new List<string>();
            foreach (GridViewRow gridViewRow in GridView1.Rows)
            {
                if (((CheckBox)gridViewRow.FindControl("cbDelete")).Checked)
                {
                    string employeeId =
                        ((Label)gridViewRow.FindControl("lblEmployeeId")).Text;
                    lstEmployeeIdsToDelete.Add(employeeId);
                }
            }
            if (lstEmployeeIdsToDelete.Count > 0)
            {
                //EmployeeDataAccessLayer.DeleteEmployees(lstEmployeeIdsToDelete);
                //GetData();
                lblMessage.ForeColor = System.Drawing.Color.Navy;
                lblMessage.Text = lstEmployeeIdsToDelete.Count.ToString() +
                    " row(s) deleted";
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "No rows selected to delete";
            }
        }
    }
}