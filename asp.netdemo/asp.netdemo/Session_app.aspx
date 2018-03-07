<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Demomaster.Master"  CodeBehind="Session_app.aspx.cs" Inherits="WebDevelopmentDemo.Session_app" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <table border="1">
            <tr><td><asp:Label ID="Label1" runat="server" Text="NoOf Users"></asp:Label></td><td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td></tr>
             <tr><td><asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label></td><td><asp:TextBox ID="txtFname" runat="server"></asp:TextBox></td></tr>
             <tr><td><asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label></td><td><asp:TextBox ID="txtLname" runat="server"></asp:TextBox></td></tr>

             <tr><td><asp:Label ID="Label4" runat="server" Text="First Name(Cookie)"></asp:Label></td><td><asp:TextBox ID="txtfnameC" runat="server"></asp:TextBox></td></tr>
             <tr><td><asp:Label ID="Label5" runat="server" Text="Last Name(Cookie)"></asp:Label></td><td><asp:TextBox ID="txtlnameC" runat="server"></asp:TextBox></td></tr>

            <tr><td><asp:Label ID="Label6" runat="server" Text="First Name(Session)"></asp:Label></td><td><asp:TextBox ID="txtfnameS" runat="server"></asp:TextBox></td></tr>
             <tr><td><asp:Label ID="Label7" runat="server" Text="Last Name(Session)"></asp:Label></td><td><asp:TextBox ID="txtlnameS" runat="server"></asp:TextBox></td></tr>
        </table>
        
        
    </div>
</asp:Content>
