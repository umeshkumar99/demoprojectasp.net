<%@ Page Title="" Language="C#" MasterPageFile="~/Demomaster.Master" AutoEventWireup="true" CodeBehind="DemoUserControl.aspx.cs" Inherits="DemoWebApplication2.DemoUserControl" %>

<%@ Register Src="~/Custom Control/DateUserControl1.ascx" TagPrefix="uc1" TagName="DateUserControl1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:DateUserControl1 runat="server" id="DateUserControl1"  lblcontroltype="Date of anniversory"  />
    <uc1:DateUserControl1 runat="server" ID="DateUserControl2" lblcontroltype="Date of Join" />
    <asp:Button ID="Button1" runat="server" Text="Show Date" OnClick="Button1_Click" />
</asp:Content>
