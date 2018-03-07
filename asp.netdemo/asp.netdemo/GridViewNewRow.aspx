<%@ Page Title="" Language="C#" MasterPageFile="~/Demomaster.Master" AutoEventWireup="true" CodeBehind="GridViewNewRow.aspx.cs" Inherits="DemoWebApplication2.GridViewNewRow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table><tr><td>
<asp:gridview ID="Gridview1" runat="server" ShowFooter="true" AutoGenerateColumns="false" OnSelectedIndexChanged="Gridview1_SelectedIndexChanged" >
        <Columns>
           
        <asp:BoundField DataField="RowNumber" HeaderText="Row Number" />
        <asp:TemplateField HeaderText="Header 1">
            <ItemTemplate>

                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </ItemTemplate>
            <%--<HeaderStyle HorizontalAlign="Right"/>
            <HeaderTemplate>
                <asp:Button ID="ButtonAdd1" runat="server" Text="Add New Row" OnClick="Gridview1_SelectedIndexChanged" />
            </HeaderTemplate>--%>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Header 2">
            <ItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Header 3">
            <ItemTemplate>
                 <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </ItemTemplate>
            <FooterStyle HorizontalAlign="Right" />
            <FooterTemplate>
             <asp:Button ID="ButtonAdd" runat="server" Text="Add New Row" OnClick="Gridview1_SelectedIndexChanged" />
            </FooterTemplate>
        </asp:TemplateField>
        </Columns>
</asp:gridview>
        </td></tr>

        <tr><td>

            <asp:GridView ID="grvStudentDetails" runat="server" 

                ShowFooter="True" AutoGenerateColumns="False"

                CellPadding="4" ForeColor="#333333" 

                GridLines="None" OnRowDeleting="grvStudentDetails_RowDeleting">
    <Columns>
        <asp:BoundField DataField="RowNumber" HeaderText="SNo" />
        <asp:TemplateField HeaderText="Student Name">
            <ItemTemplate>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Student Age">
            <ItemTemplate>
                <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Student Address">
            <ItemTemplate>
                <asp:TextBox ID="txtAddress" runat="server" 

                   Height="55px" TextMode="MultiLine"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Gender">
            <ItemTemplate>
                <asp:RadioButtonList ID="RBLGender" 

                           runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="M">Male</asp:ListItem>
                    <asp:ListItem Value="F">Female</asp:ListItem>
                </asp:RadioButtonList>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Qualification">
            <ItemTemplate>
                <asp:DropDownList ID="drpQualification" runat="server">
                    <asp:ListItem Value="G">Graduate</asp:ListItem>
                    <asp:ListItem Value="P">Post Graduate</asp:ListItem>
                </asp:DropDownList>
            </ItemTemplate>
            <FooterStyle HorizontalAlign="Right" />
            <FooterTemplate>
                <asp:Button ID="ButtonAdd" runat="server" 

                        Text="Add New Row" OnClick="ButtonAdd_Click" />
            </FooterTemplate>
        </asp:TemplateField>
        <asp:CommandField ShowDeleteButton="True" />
    </Columns>
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <RowStyle BackColor="#EFF3FB" />
    <EditRowStyle BackColor="#2461BF" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <AlternatingRowStyle BackColor="White" />
</asp:GridView>
            </td></tr>
    </table>
</asp:Content>
