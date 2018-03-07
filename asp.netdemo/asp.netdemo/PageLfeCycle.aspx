<%@ Page Language="C#" MasterPageFile="~/Demomaster.Master" AutoEventWireup="true" CodeBehind="PageLfeCycle.aspx.cs" Inherits="WebDevelopmentDemo.PageLfeCycle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
    <asp:textbox runat="server" ID="txt1"></asp:textbox>
        <asp:textbox id="Text1"   runat="server" > </asp:textbox>
    <asp:button runat="server" text="Post data" OnClick="Unnamed2_Click"  />
        
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Session_app.aspx" Target="_top">SessionPage Link</asp:HyperLink>
        <asp:Button ID="Button1" runat="server" Text="using Transfer" OnClick="Button1_Click" />
        <asp:Button ID="btnCookie" runat="server" OnClick="btnSession_Click" Text="Using Cookies" />
        <asp:Button ID="btnSession" runat="server" Text="Using Session" OnClick="btnSession_Click1" />
        <asp:Button ID="btnRedirect" runat="server" Text="RedirectMethod" OnClick="btnRedirect_Click" />
        <asp:Button ID="Button2" runat="server" Text="Checkaddress" OnClick="Button2_Click"  />
    </div>
    
</asp:Content>

