<%@ Page Title="" Language="C#" MasterPageFile="~/Demomaster.Master" AutoEventWireup="true" CodeBehind="TemplateField.aspx.cs" Inherits="DemoWebApplication2.TemplateField" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AllowPaging="True"  AutoGenerateEditButton="True" AutoGenerateColumns="False" DataKeyNames="EmpID" DataSourceID="SqlDataSource1">
        <Columns>

             <asp:TemplateField>
            <HeaderTemplate>
                <asp:CheckBox ID="cbDeleteHeader" runat="server" 
                    AutoPostBack="True" 
                    oncheckedchanged="cbDeleteHeader_CheckedChanged" />
            </HeaderTemplate>
            <ItemTemplate>
                <asp:CheckBox ID="cbDelete" runat="server" 
                    AutoPostBack="true" 
                    oncheckedchanged="cbDelete_CheckedChanged" />
            </ItemTemplate>
        </asp:TemplateField>
            <asp:TemplateField HeaderText="EmpID" InsertVisible="False" SortExpression="EmpID">
                
                <EditItemTemplate>
                    <asp:Label ID="lblEmployeeId" runat="server" Text='<%# Eval("EmpID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblEmployeeId" runat="server" Text='<%# Bind("EmpID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Ename" SortExpression="Ename">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Ename") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label1" runat="server" Text='<%# Bind("Ename") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
            <asp:BoundField DataField="CountryName" HeaderText="CountryName" SortExpression="CountryName" />
            <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                <EditItemTemplate>
                    <%--<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>--%>
                    <asp:DropDownList runat="server" id="ddgender" SelectedValue='<%# Bind("Gender") %>' >
                       <asp:ListItem>Please select</asp:ListItem>
                         <asp:ListItem >M</asp:ListItem>
                         <asp:ListItem>F</asp:ListItem>

                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PartitionTestConnectionString %>" SelectCommand="SELECT        dbo.tblEmployee.EmpID, dbo.tblEmployee.Ename, dbo.tblEmployee.DOB, dbo.tblEmployee.salary, dbo.tblCountries.CountryName, dbo.tblEmployee.Gender
FROM            dbo.tblDepartment INNER JOIN
                         dbo.tblEmployee ON dbo.tblDepartment.DeptID = dbo.tblEmployee.DeptID INNER JOIN
                         dbo.tblCountries ON dbo.tblDepartment.CountryID = dbo.tblCountries.CountryId"></asp:SqlDataSource>

    <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>

    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
</asp:Content>
