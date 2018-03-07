<%@ Page Title="" Language="C#" MasterPageFile="~/Demomaster.Master" AutoEventWireup="true" CodeBehind="ValidationControls.aspx.cs" Inherits="DemoWebApplication2.ValidationControls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr><td colspan="3"><asp:ValidationSummary runat="server"></asp:ValidationSummary></td></tr>
        <tr><td class="auto-style1">Input no.(for custom validation)</td><td class="auto-style1">
            <asp:TextBox ID="txtnum" runat="server" OnTextChanged="txtnum_TextChanged"></asp:TextBox></td>
            <td><asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator1_ServerValidate" ControlToValidate="txtnum"></asp:CustomValidator></td>
        </tr>
        
         <tr><td>Required validator</td>
             <td><asp:TextBox ID="txtreq" runat="server"></asp:TextBox> </td>
           <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field is required" ControlToValidate="txtreq"> </asp:RequiredFieldValidator>

            </td></tr>
      <tr><td>Range Validator</td><td><asp:TextBox ID="txtrange" runat="server"></asp:TextBox>
       </td>        
          <td> <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Out of Range" ControlToValidate="txtrange" MaximumValue="100" MinimumValue="0"></asp:RangeValidator>

          </td>
        </tr>
          <tr><td>Compare Validator</td>
            <td><asp:TextBox ID="txtpass1" runat="server" TextMode="Password"></asp:TextBox> </td>
            <td>
             
                <asp:TextBox ID="txtpass2" runat="server" TextMode="Password"></asp:TextBox></td>
      <td>  
             <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password are not same" ControlToCompare="txtpass1" ControlToValidate="txtpass2"></asp:CompareValidator></td>

        </tr>
        <tr><td>Regular Expression(E-mail)</td> <td> <asp:TextBox ID="txtreg" runat="server"></asp:TextBox></td>
        <td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid email address" 
            ValidationExpression="^[a-zA-Z'@6]{3,8}$" ControlToValidate="txtreg"></asp:RegularExpressionValidator></td> <%--^\d{2}-\s{2,5}-\d{6,8}$--%>
        </td>  
        </tr>
          <tr>
            <td colspan="3"><asp:Button ID="btnsave" runat="server" Text="Valide & Save data" OnClick="btnsave_Click" /></td>
        </tr>
    </table>
</asp:Content>