<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DateUserControl1.ascx.cs" Inherits="DemoWebApplication2.Custom_Control.DateUserControl1" %>
<div>
    <asp:Label ID="lbldatetype" runat="server" Text=" Date of Birth"></asp:Label>
    <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
    <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" Height="100px" ImageAlign="Middle" ImageUrl="~/Images/asp.net`.jpg" Width="56px" />
<asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
    <br />
    
</div>
