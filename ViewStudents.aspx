<%@ Page Title="" Language="VB" MasterPageFile="~/FacultyMasterPage.master" AutoEventWireup="false" CodeFile="ViewStudents.aspx.vb" Inherits="ViewStudents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
    CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical">
    <AlternatingRowStyle BackColor="#DCDCDC" />
    <Columns>
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Address" HeaderText="Address" 
            SortExpression="Address" />
        <asp:BoundField DataField="Birthdate" HeaderText="Birthdate" 
            SortExpression="Birthdate" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" 
            SortExpression="Gender" />
        <asp:BoundField DataField="Hobbies" HeaderText="Hobbies" 
            SortExpression="Hobbies" />
        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
        <asp:BoundField DataField="UserName" HeaderText="UserName" 
            SortExpression="UserName" />
        <asp:BoundField DataField="Password" HeaderText="Password" 
            SortExpression="Password" />
        <asp:BoundField DataField="ConfirmPassword" HeaderText="ConfirmPassword" 
            SortExpression="ConfirmPassword" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="UserType" HeaderText="UserType" 
            SortExpression="UserType" />
        <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
            SortExpression="MobileNo" />
        <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#0000A9" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#000065" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:con %>" 
    SelectCommand="SELECT * FROM [tblUsers] WHERE ([UserType] = @UserType)">
    <SelectParameters>
        <asp:Parameter DefaultValue="Student" Name="UserType" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>

