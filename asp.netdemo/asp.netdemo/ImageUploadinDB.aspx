<%@ Page Title="" Language="C#" MasterPageFile="~/Demomaster.Master" AutoEventWireup="true" CodeBehind="ImageUploadinDB.aspx.cs" Inherits="DemoWebApplication2.ImageUploadinDB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table><tr><td><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td><td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                                                                       </td></tr>

        <tr><td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td><td>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                                                                       </td></tr>
        <tr><td><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td><td>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                                                                       </td></tr>
        <tr><td><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td><td>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                                                                       </td></tr>
        <tr><td><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td><td>
       <asp:Image ID="Image1" runat="server" />
                                                                                       </td></tr>

    </table>
    

    
    sno,sname,course,fee,photo from student
</asp:Content>
