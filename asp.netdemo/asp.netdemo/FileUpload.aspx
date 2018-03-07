<%@ Page Language="C#" MasterPageFile="~/Demomaster.Master"  AutoEventWireup="true" CodeBehind="FileUpload.aspx.cs" Inherits="DemoWebApplication2.FileUpload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
    <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Upload File" />
    </div>
        
        <asp:Label ID="lblmess" runat="server" Text="Label"></asp:Label>

</asp:Content>

        
    