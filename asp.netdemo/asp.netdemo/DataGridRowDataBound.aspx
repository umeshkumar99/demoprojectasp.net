<%@ Page Title="" Language="C#" MasterPageFile="~/Demomaster.Master" AutoEventWireup="true" CodeBehind="DataGridRowDataBound.aspx.cs" Inherits="DemoWebApplication2.DataGridRowDataBound" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EmpID" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
        <Columns>
            <asp:BoundField DataField="EmpID" HeaderText="EmpID" InsertVisible="False" ReadOnly="True" SortExpression="EmpID" />
            <asp:BoundField DataField="Ename" HeaderText="Ename" SortExpression="Ename" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
            <asp:BoundField DataField="CountryName" HeaderText="CountryName"  SortExpression="CountryName" />
        </Columns>

    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PartitionTestConnectionString %>" SelectCommand="SELECT        dbo.tblEmployee.EmpID, dbo.tblEmployee.Ename, dbo.tblEmployee.DOB, dbo.tblEmployee.salary, dbo.tblCountries.CountryName
FROM            dbo.tblDepartment INNER JOIN
                         dbo.tblEmployee ON dbo.tblDepartment.DeptID = dbo.tblEmployee.DeptID INNER JOIN
                         dbo.tblCountries ON dbo.tblDepartment.CountryID = dbo.tblCountries.CountryId"></asp:SqlDataSource>

</asp:Content>
