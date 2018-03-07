<%@ Page Title="" Language="C#" MasterPageFile="~/Demomaster.Master" AutoEventWireup="true" CodeBehind="NestedDataGridDemo.aspx.cs" Inherits="DemoWebApplication2.NestedDataGridDemo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <Columns>
            <asp:BoundField DataField="ContinentID" HeaderText="Continent ID" SortExpression="ContinentID" />
            <asp:BoundField DataField="ContinentName" HeaderText="ContinentName" SortExpression="ContinentName" />
            <asp:TemplateField HeaderText="Countries">
               
                <ItemTemplate>
                    
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSource='<%#Bind("Countries") %>'>
                            <Columns>
                                <asp:BoundField DataField="CountryID" HeaderText="CountryID" />
                                <asp:BoundField DataField="CountryName" HeaderText="CountryName" />
                                <asp:TemplateField HeaderText="Cities">
                                   
                                     <ItemTemplate>
                                         <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSource='<%#Bind("Cities") %>'>
                                                <Columns>
                                                    <asp:BoundField DataField="CityID" HeaderText="CityID" />
                                                    <asp:BoundField DataField="CityName" HeaderText="CityName" />
                                                </Columns>


                                                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                                <HeaderStyle BackColor="#8F7710" Font-Bold="True" ForeColor="Yellow" />
                                                <PagerStyle ForeColor="#8F7710" HorizontalAlign="Center" />
                                                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                                <SelectedRowStyle BackColor="#8F7710" Font-Bold="True" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                                <SortedDescendingHeaderStyle BackColor="#93451F" />

                                        </asp:GridView>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>

                             <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A77189" Font-Bold="True" ForeColor="Yellow" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                        </asp:GridView>

                </ItemTemplate>
               
            </asp:TemplateField>
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
    
    
</asp:Content>
