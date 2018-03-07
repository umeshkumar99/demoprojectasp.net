<%@ Page Title="" Language="C#" MasterPageFile="~/Demomaster.Master" AutoEventWireup="true" CodeBehind="RunTimeControls.aspx.cs" Inherits="DemoWebApplication2.RunTimeControls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table><tr>
        <td>        Control Type
</td>
        <td>
            <asp:CheckBoxList ID="lstControlType" runat="server">
                <asp:ListItem>Lable</asp:ListItem>
                <asp:ListItem>TextBox</asp:ListItem>
                <asp:ListItem>Buttons</asp:ListItem>
                
            </asp:CheckBoxList>
            
        </td>
        
        <td>No. Of Controls</td>
        <td><asp:TextBox ID="txtNofControls" runat="server"></asp:TextBox></td>
        <td><asp:Button ID="btnAddcontrol" runat="server" Text="Add Controls" OnClick="btnAddcontrol_Click" /></td>
           </tr>
        <tr><td>Lable Container</td>
            <td colspan="4"> <asp:Panel ID="pnLable" runat="server"></asp:Panel></td>
        </tr>
        

        <tr><td>TextBox Container</td>
            <td colspan="4"><asp:Panel ID="pnlTextBox" runat="server"></asp:Panel></td>
        </tr>
        <tr><td>Button Container</td>
            <td colspan="4"> <asp:Panel ID="pnlButton" runat="server"></asp:Panel></td>
        </tr>


    </table>
</asp:Content>
