<%@ Page Title="" Language="C#" MasterPageFile="~/Demomaster.Master" AutoEventWireup="true" CodeBehind="AdRotatordemo.aspx.cs" Inherits="DemoWebApplication2.AdRotatordemo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:AdRotator AdvertisementFile="~/app_data/AdsData.xml" ID="AdRotator1" runat="server" Target="_blank"   Height="200px" Width="200px" />

</asp:Content>
