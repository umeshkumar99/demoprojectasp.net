using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace DemoWebApplication2
{
    public partial class GridViewNewRow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SetInitialRow();
                FirstGridViewRow();
            }
        }


        private void SetInitialRow()
        {
            DataTable dt = new DataTable();
            DataRow dr = null;
            dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
            dt.Columns.Add(new DataColumn("Column1", typeof(string)));
            dt.Columns.Add(new DataColumn("Column2", typeof(string)));
            dt.Columns.Add(new DataColumn("Column3", typeof(string)));
            dr = dt.NewRow();
            dr["RowNumber"] = 1;
            dr["Column1"] = string.Empty;
            dr["Column2"] = string.Empty;
            dr["Column3"] = string.Empty;
            dt.Rows.Add(dr);
            //dr = dt.NewRow();

            //Store the DataTable in ViewState
            ViewState["CurrentTable"] = dt;

            Gridview1.DataSource = dt;
            Gridview1.DataBind();
        }

        private void AddNewRowToGrid()
        {
            int rowIndex = 0;

            if (ViewState["CurrentTable"] != null)
            {
                DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
                DataRow drCurrentRow = null;
                if (dtCurrentTable.Rows.Count > 0)
                {
                    for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                    {
                        //extract the TextBox values
                        TextBox box1 = (TextBox)Gridview1.Rows[rowIndex].Cells[1].FindControl("TextBox1");
                        TextBox box2 = (TextBox)Gridview1.Rows[rowIndex].Cells[2].FindControl("TextBox2");
                        TextBox box3 = (TextBox)Gridview1.Rows[rowIndex].Cells[3].FindControl("TextBox3");

                        drCurrentRow = dtCurrentTable.NewRow();
                        drCurrentRow["RowNumber"] = i + 1;

                        dtCurrentTable.Rows[i - 1]["Column1"] = box1.Text;
                        dtCurrentTable.Rows[i - 1]["Column2"] = box2.Text;
                        dtCurrentTable.Rows[i - 1]["Column3"] = box3.Text;

                        rowIndex++;
                    }
                    dtCurrentTable.Rows.Add(drCurrentRow);
                    ViewState["CurrentTable"] = dtCurrentTable;

                    Gridview1.DataSource = dtCurrentTable;
                    Gridview1.DataBind();
                }
            }
            else
            {
                Response.Write("ViewState is null");
            }

            //Set Previous Data on Postbacks
            SetPreviousData();
        }

        private void SetPreviousData()
        {
            int rowIndex = 0;
            if (ViewState["CurrentTable"] != null)
            {
                DataTable dt = (DataTable)ViewState["CurrentTable"];
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        TextBox box1 = (TextBox)Gridview1.Rows[rowIndex].Cells[1].FindControl("TextBox1");
                        TextBox box2 = (TextBox)Gridview1.Rows[rowIndex].Cells[2].FindControl("TextBox2");
                        TextBox box3 = (TextBox)Gridview1.Rows[rowIndex].Cells[3].FindControl("TextBox3");

                        box1.Text = dt.Rows[i]["Column1"].ToString();
                        box2.Text = dt.Rows[i]["Column2"].ToString();
                        box3.Text = dt.Rows[i]["Column3"].ToString();

                        rowIndex++;
                    }
                }
            }
        }

        protected void Gridview1_SelectedIndexChanged(object sender, EventArgs e)
        {
            AddNewRowToGrid();
           
        }
        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            AddNewRow();

        }
        

        private void FirstGridViewRow()
        {
            DataTable dt = new DataTable();
            DataRow dr = null;
            dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
            dt.Columns.Add(new DataColumn("Col1", typeof(string)));
            dt.Columns.Add(new DataColumn("Col2", typeof(string)));
            dt.Columns.Add(new DataColumn("Col3", typeof(string)));
            dt.Columns.Add(new DataColumn("Col4", typeof(string)));
            dt.Columns.Add(new DataColumn("Col5", typeof(string)));
            dr = dt.NewRow();
            dr["RowNumber"] = 1;
            dr["Col1"] = string.Empty;
            dr["Col2"] = string.Empty;
            dr["Col3"] = string.Empty;
            dr["Col4"] = string.Empty;
            dr["Col5"] = string.Empty;
            dt.Rows.Add(dr);

            ViewState["CurrentTable1"] = dt;

            grvStudentDetails.DataSource = dt;
            grvStudentDetails.DataBind();
        }

        private void AddNewRow()
        {
            int rowIndex = 0;

            if (ViewState["CurrentTable"] != null)
            {
                DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable1"];
                DataRow drCurrentRow = null;
                if (dtCurrentTable.Rows.Count > 0)
                {
                    for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                    {
                        TextBox TextBoxName =
                          (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtName");
                        TextBox TextBoxAge =
                          (TextBox)grvStudentDetails.Rows[rowIndex].Cells[2].FindControl("txtAge");
                        TextBox TextBoxAddress =
                          (TextBox)grvStudentDetails.Rows[rowIndex].Cells[3].FindControl("txtAddress");
                        RadioButtonList RBLGender =
                          (RadioButtonList)grvStudentDetails.Rows[rowIndex].Cells[4].FindControl("RBLGender");
                        DropDownList DrpQualification =
                          (DropDownList)grvStudentDetails.Rows[rowIndex].Cells[5].FindControl("drpQualification");
                        drCurrentRow = dtCurrentTable.NewRow();
                        drCurrentRow["RowNumber"] = i + 1;

                        dtCurrentTable.Rows[i - 1]["Col1"] = TextBoxName.Text;
                        dtCurrentTable.Rows[i - 1]["Col2"] = TextBoxAge.Text;
                        dtCurrentTable.Rows[i - 1]["Col3"] = TextBoxAddress.Text;
                        dtCurrentTable.Rows[i - 1]["Col4"] = RBLGender.SelectedValue;
                        dtCurrentTable.Rows[i - 1]["Col5"] = DrpQualification.SelectedValue;
                        rowIndex++;
                    }
                    dtCurrentTable.Rows.Add(drCurrentRow);
                    ViewState["CurrentTable1"] = dtCurrentTable;

                    grvStudentDetails.DataSource = dtCurrentTable;
                    grvStudentDetails.DataBind();
                }
            }
            else
            {
                Response.Write("ViewState is null");
            }
            SetPreviousData1();
        }

        private void SetPreviousData1()
        {
            int rowIndex = 0;
            if (ViewState["CurrentTable"] != null)
            {
                DataTable dt = (DataTable)ViewState["CurrentTable1"];
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        TextBox TextBoxName = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtName");
                        TextBox TextBoxAge = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[2].FindControl("txtAge");
                        TextBox TextBoxAddress =
                          (TextBox)grvStudentDetails.Rows[rowIndex].Cells[3].FindControl("txtAddress");
                        RadioButtonList RBLGender =
                          (RadioButtonList)grvStudentDetails.Rows[rowIndex].Cells[4].FindControl("RBLGender");
                        DropDownList DrpQualification =
                          (DropDownList)grvStudentDetails.Rows[rowIndex].Cells[5].FindControl("drpQualification");

                        TextBoxName.Text = dt.Rows[i]["Col1"].ToString();
                        TextBoxAge.Text = dt.Rows[i]["Col2"].ToString();
                        TextBoxAddress.Text = dt.Rows[i]["Col3"].ToString();
                        RBLGender.SelectedValue = dt.Rows[i]["Col4"].ToString();
                        DrpQualification.SelectedValue = dt.Rows[i]["Col5"].ToString();
                        rowIndex++;
                    }
                }
            }
        }

        protected void grvStudentDetails_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SetRowData();
            if (ViewState["CurrentTable"] != null)
            {
                DataTable dt = (DataTable)ViewState["CurrentTable1"];
                DataRow drCurrentRow = null;
                int rowIndex = Convert.ToInt32(e.RowIndex);
                if (dt.Rows.Count > 1)
                {
                    dt.Rows.Remove(dt.Rows[rowIndex]);
                    drCurrentRow = dt.NewRow();
                    ViewState["CurrentTable"] = dt;
                    grvStudentDetails.DataSource = dt;
                    grvStudentDetails.DataBind();

                    for (int i = 0; i < grvStudentDetails.Rows.Count - 1; i++)
                    {
                        grvStudentDetails.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                    }
                    SetPreviousData1();
                }
            }
        }

        private void SetRowData()
        {
            int rowIndex = 0;

            if (ViewState["CurrentTable1"] != null)
            {
                DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
                DataRow drCurrentRow = null;
                if (dtCurrentTable.Rows.Count > 0)
                {
                    for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                    {
                        TextBox TextBoxName = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtName");
                        TextBox TextBoxAge = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[2].FindControl("txtAge");
                        TextBox TextBoxAddress = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[3].FindControl("txtAddress");
                        RadioButtonList RBLGender =
                          (RadioButtonList)grvStudentDetails.Rows[rowIndex].Cells[4].FindControl("RBLGender");
                        DropDownList DrpQualification =
                          (DropDownList)grvStudentDetails.Rows[rowIndex].Cells[5].FindControl("drpQualification");
                        drCurrentRow = dtCurrentTable.NewRow();
                        drCurrentRow["RowNumber"] = i + 1;
                        dtCurrentTable.Rows[i - 1]["Col1"] = TextBoxName.Text;
                        dtCurrentTable.Rows[i - 1]["Col2"] = TextBoxAge.Text;
                        dtCurrentTable.Rows[i - 1]["Col3"] = TextBoxAddress.Text;
                        dtCurrentTable.Rows[i - 1]["Col4"] = RBLGender.SelectedValue;
                        dtCurrentTable.Rows[i - 1]["Col5"] = DrpQualification.SelectedValue;
                        rowIndex++;
                    }

                    ViewState["CurrentTable1"] = dtCurrentTable;
                    //grvStudentDetails.DataSource = dtCurrentTable;
                    //grvStudentDetails.DataBind();
                }
            }
            else
            {
                Response.Write("ViewState is null");
            }
            //SetPreviousData();
        }



    }
}