<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tree.aspx.cs" MasterPageFile="~/Demomaster.Master"  Inherits="DemoWebApplication2.Tree" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
    <div>
        <table><tr><td colspan="2">DesignTime Tree</td></tr>

            <tr><td colspan="2">
                 <asp:treeview runat="server" ImageSet="Contacts" NodeIndent="10">
        <HoverNodeStyle Font-Underline="False" />
        <Nodes>
            <asp:TreeNode Text="GM-IT" Value="GM-IT">
                <asp:TreeNode Text="DGM-software" Value="DGM-software"></asp:TreeNode>
                <asp:TreeNode Text="DGM-Hardware" Value="DGM-Hardware"></asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode Text="GM-Marketing" Value="GM-Marketing">
                <asp:TreeNode Text="DGM-sales outdoor" Value="DGM-sales outdoor"></asp:TreeNode>
                <asp:TreeNode Text="DGM-Indoor" Value="DGM-Indoor"></asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode Text="GM-HR" Value="GM-HR"></asp:TreeNode>
            <asp:TreeNode Text="GM-Accounts" Value="GM-Accounts">
                <asp:TreeNode ImageToolTip="DGM Accounts Salary" Text="DGM salary" Value="DGM salary"></asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode Text="New Node" Value="New Node"></asp:TreeNode>
        </Nodes>
        <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
        <ParentNodeStyle Font-Bold="True" ForeColor="#5555DD" />
        <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:treeview>

                </td></tr>
            <tr><td colspan="2">Run Time Tree</td></tr>
            <tr><td colspan="2"><asp:TreeView ID="TreeView1" runat="server" ImageSet="XPFileExplorer" NodeIndent="15">
                <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
                <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" HorizontalPadding="2px" NodeSpacing="0px" VerticalPadding="2px" />
                <ParentNodeStyle Font-Bold="False" />
                <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" HorizontalPadding="0px" VerticalPadding="0px" />
                </asp:TreeView></td></tr>
            
        </table>
   
    </div>
   </asp:Content>


