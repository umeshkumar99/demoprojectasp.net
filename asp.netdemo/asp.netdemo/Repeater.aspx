<%@ Page Title="" Language="C#" MasterPageFile="~/Demomaster.Master" AutoEventWireup="true" CodeBehind="Repeater.aspx.cs" Inherits="DemoWebApplication2.Repeater" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        
      <tr><td>  

<asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="ds1">
    <Columns>
        <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
        <asp:BoundField DataField="CustomerCode" HeaderText="CustomerCode" SortExpression="CustomerCode" />
        <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
        <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
        <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
        <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
        <asp:BoundField DataField="WebSiteUrl" HeaderText="WebSiteUrl" SortExpression="WebSiteUrl" />
        <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
        
        <asp:BoundField DataField="DateUpdated" HeaderText="DateUpdated" SortExpression="DateUpdated" />
        
    </Columns>
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FFF1D4" />
    <SortedAscendingHeaderStyle BackColor="#B95C30" />
    <SortedDescendingCellStyle BackColor="#F1E5CE" />
    <SortedDescendingHeaderStyle BackColor="#93451F" />
          </asp:GridView>

          </td></tr>
        

        <tr><td>  <asp:Repeater ID="Repeater2" runat="server">

        </asp:Repeater></td></tr>
<tr><td><asp:SqlDataSource runat="server" ID="ds1"  
    ConnectionString="Data Source=.;Initial Catalog=AngularJSDatabase;Persist Security Info=True;User ID=sa;Password=123456" ProviderName="System.Data.SqlClient" 
    SelectCommand="SELECT [CustomerID], [CustomerCode], [CompanyName], [Address], [City], [Region], [PostalCode], [Country], [PhoneNumber], [WebSiteUrl], [DateCreated], [DateUpdated] FROM [Customers] WHERE ([Country] = @Country)">
    <SelectParameters>
        <asp:Parameter DefaultValue="Canada" Name="Country" Type="String" />
    </SelectParameters>
    </asp:SqlDataSource></td></tr>


        <tr><td>Using Repeater</td>
       
            
            
                 
        <asp:Repeater ID="Repeater1" runat="server" >

            <ItemTemplate>
                <table border="1"><tr><td style="width:200px;" >
                   
                                   
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("photo1")%>' />
                                      </td>
                    
                    <td>
                        <table style="width:800px;" >
                            <tr><td><asp:Label ID="Label1" runat="server" Text='<%# Eval("sno")%>'></asp:Label></td></tr>
                            <tr><td><asp:Label ID="Label2" runat="server" Text='<%# Eval("sname") %>'></asp:Label></td></tr>
                            <tr><td><asp:Label ID="Label3" runat="server" Text='<%# Eval("course") %>'></asp:Label></td></tr>
                            <tr><td><asp:Label ID="Label4" runat="server" Text='<%# Eval("fee")%>'></asp:Label></td></tr>
                        </table>
                        


                    </td></tr></table>
            </ItemTemplate>
            <SeparatorTemplate>
                  <asp:Image ID="Image2" runat="server" ImageUrl='Images/asp.net.jpg' />
            </SeparatorTemplate>
        </asp:Repeater>
            <td></td></tr>
  
<%--

        <tr><td>Using Grid view</td><td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowDataBound="GridView1_RowDataBound">
            <Columns>
                    
                    <asp:TemplateField>
                        <ItemTemplate>
                            
                            <table border="1"><tr><td style="width:200px;" >
                   
                                   
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("photo1")%>' />
                                      </td>
                    
                    <td>
                        <table style="width:800px;" >
                            <tr><td><asp:Label ID="Label1" runat="server" Text='<%# Eval("sno")%>'></asp:Label></td></tr>
                            <tr><td><asp:Label ID="Label2" runat="server" Text='<%# Eval("sname") %>'></asp:Label></td></tr>
                            <tr><td><asp:Label ID="Label3" runat="server" Text='<%# Eval("course") %>'></asp:Label></td></tr>
                            <tr><td><asp:Label ID="Label4" runat="server" Text='<%# Eval("fee")%>'></asp:Label></td></tr>
                        </table>
                        


                    </td></tr></table>
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>            </asp:GridView>
        </td></tr>
    --%>

        <tr><td>using datalist</td><td><asp:DataList ID="DataList1" runat="server" HorizontalAlign="Center" GridLines="Both" RepeatDirection="Vertical" >

            <ItemTemplate>
                 <table border="1"><tr><td style="width:200px;" >
                   
                                   
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("photo1")%>' />
                                      </td>
                    
                    <td>
                        <table style="width:800px;" >
                            <tr><td><asp:Label ID="Label1" runat="server" Text='<%# Eval("sno")%>'></asp:Label></td></tr>
                            <tr><td><asp:Label ID="Label2" runat="server" Text='<%# Eval("sname") %>'></asp:Label></td></tr>
                            <tr><td><asp:Label ID="Label3" runat="server" Text='<%# Eval("course") %>'></asp:Label></td></tr>
                            <tr><td><asp:Label ID="Label4" runat="server" Text='<%# Eval("fee")%>'></asp:Label></td></tr>
                        </table>
                        


                    </td></tr></table>

            </ItemTemplate>
                                       </asp:DataList></td></tr>

    </table>
    
</asp:Content>
