<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Jquerydemo.aspx.cs" Inherits="DemoWebApplication2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/mystyle.css" rel="stylesheet" />
    <script  type="text/javascript" >
        $(document).ready(function () {
            //$('#ctl00$ContentPlaceHolder1$TextBox1').val("First Name");
            $("#<%=txtfname.ClientID%>").val('first name');
            $("#<%=txtfname.ClientID%>").click(function () {
                if($("#<%=txtfname.ClientID%>").val()=='first name')
                $("#<%=txtfname.ClientID%>").val('');
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table><tr><td>

        <asp:Label ID="Label1" runat="server" Text="first Name"></asp:Label>
               </td>
        <td>
<asp:TextBox ID="txtfname" runat="server"  CssClass="txtBox" Rows="1"></asp:TextBox>
                    </td></tr>


        <tr><td>

        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
               </td>
        <td>
<asp:TextBox ID="txtlname" runat="server"  AutoPostBack="true" OnTextChanged="TextBox2_TextChanged" CssClass="txtBox" TabIndex="2"></asp:TextBox>
                    </td></tr>
        <tr><td>

        <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
               </td>
        <td>
<asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" CssClass="txtBox" TabIndex="3"></asp:TextBox>
                    </td></tr>

         <tr><td>

        <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
               </td>
        <td>
            <asp:DropDownList ID="ddGender" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddGender_SelectedIndexChanged">
                <asp:ListItem >Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Dont Dislose</asp:ListItem>
            </asp:DropDownList>


                    </td></tr>

         <tr><td>

        <asp:Label ID="Label5" runat="server" Text="US Visa"></asp:Label>
               </td>
        <td>
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Visa" Text="Yes"  />
           <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Visa" Text="No" />


                    </td></tr>

        <tr><td>

        <asp:Label ID="Label6" runat="server" Text="DOB"></asp:Label>
               </td>
        <td>
            <asp:TextBox ID="txtdob" runat="server" ></asp:TextBox>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/Images/angularjs1.png" OnClick="ImageButton1_Click" Width="20px"  />
            <asp:Calendar ID="caldob" runat="server" Visible="false" OnSelectionChanged="caldob_SelectionChanged" SelectedDate="02/04/2018 12:44:02"></asp:Calendar>

                    </td></tr>





        <tr><td style="text-align: center" >
            <asp:Button ID="btnsave" runat="server" Text="Save Data" OnClick="btnsave_Click" />
            <asp:Button ID="btnclear" runat="server" Text="Clear Data" OnClick="btnclear_Click" />

            </td></tr>

          <tr><td style="text-align: center" >
            

              <asp:Image ID="Image1" runat="server" BorderStyle="Solid" BorderWidth="3px" DescriptionUrl="~/Session_app.aspx" ImageUrl="~/Images/angularjs3.jpeg" />
            

            </td></tr>

        <tr><td style="text-align: center" >
            <asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" OnChangedPassword="ChangePassword1_ChangedPassword" OnSendingMail="ChangePassword1_SendingMail">
                <CancelButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
                <ChangePasswordButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
                <ContinueButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <PasswordHintStyle Font-Italic="True" ForeColor="#888888" />
                <TextBoxStyle Font-Size="0.8em" />
                <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
            </asp:ChangePassword>

            </td></tr>
        

        <tr><td style="text-align: center" >
            

            <asp:Xml ID="Xml1" runat="server" DocumentSource="~/App_Data/Countrydata.xml"></asp:Xml>
            

            </td></tr>
        <tr><td></td><td>



                     </td></tr>
          <tr><td>
              <%--<asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" OnCreatedUser="CreateUserWizard1_CreatedUser">
                  <ContinueButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#990000" />
                  <CreateUserButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#990000" />
                  <TitleTextStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                  <WizardSteps>
                      <asp:CreateUserWizardStep runat="server" />
                      <asp:CompleteWizardStep runat="server" />
                  </WizardSteps>
                  <HeaderStyle BackColor="#FFCC66" BorderColor="#FFFBD6" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="#333333" HorizontalAlign="Center" />
                  <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#990000" />
                  <SideBarButtonStyle ForeColor="White" />
                  <SideBarStyle BackColor="#990000" Font-Size="0.9em" VerticalAlign="Top" />
              </asp:CreateUserWizard>--%>
              </td><td>



                     </td></tr>  <tr><td></td><td>



                     </td></tr>

          <tr><td></td><td>



                     </td></tr>

          <tr><td></td><td>



                     </td></tr>


    </table>
    
</asp:Content>
