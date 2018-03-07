<%@ Page Title="" Language="C#" MasterPageFile="~/Demomaster.Master" AutoEventWireup="true" CodeBehind="DataGridDrillDown.aspx.cs" Inherits="DemoWebApplication2.DataGridDrillDown" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
  <strong>  Continent details</strong>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
         DataKeyNames="ContinentId" DataSourceID="SqlContinent" AllowSorting="True" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" ItemStyle-Width="100px" />
            <asp:BoundField DataField="ContinentId" HeaderText="ContinentId" InsertVisible="False" ReadOnly="True" SortExpression="ContinentId" />
            <asp:BoundField DataField="ContinentName" HeaderText="ContinentName" SortExpression="ContinentName" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <strong>Countries Details</strong>
    <asp:GridView  ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="CountryId" DataSourceID="SqlCountries" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" ItemStyle-Width="100px" />
            <asp:BoundField DataField="CountryId" HeaderText="CountryId" InsertVisible="False" ReadOnly="True" SortExpression="CountryId" />
            <asp:BoundField DataField="CountryName" HeaderText="CountryName" SortExpression="CountryName" />
        </Columns>

        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />

    </asp:GridView>
    <asp:SqlDataSource ID="SqlCountries" runat="server" ConnectionString="<%$ ConnectionStrings:PartitionTestConnectionString %>" SelectCommand="SELECT [CountryId], [CountryName] FROM [tblCountries] WHERE ([ContinentId] = @ContinentId)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="ContinentId" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <strong>Cities Details</strong>
    <asp:GridView  ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlCities" AllowSorting="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="CityId" HeaderText="CityId" InsertVisible="False" ReadOnly="True" SortExpression="CityId" ItemStyle-Width="100px"  />
            <asp:BoundField DataField="CityName" HeaderText="CityName" SortExpression="CityName" />
        </Columns>


        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />


    </asp:GridView>


           



            </ContentTemplate>
    </asp:UpdatePanel>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlCities" runat="server" ConnectionString="<%$ ConnectionStrings:PartitionTestConnectionString %>" SelectCommand="SELECT [CityId], [CityName] FROM [tblCities] WHERE ([CountyID] = @CountyID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView2" Name="CountyID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlContinent" runat="server" ConnectionString="<%$ ConnectionStrings:PartitionTestConnectionString %>" SelectCommand="SELECT [ContinentId], [ContinentName] FROM [tblContinents]"></asp:SqlDataSource>
</asp:Content>
