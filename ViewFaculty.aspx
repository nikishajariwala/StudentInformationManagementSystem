<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="false" CodeFile="ViewFaculty.aspx.vb" Inherits="ViewFaculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
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
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                SortExpression="MobileNo" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:con %>" 
        SelectCommand="SELECT [Name], [Address], [Birthdate], [Gender], [Hobbies], [Age], [UserName], [Email], [MobileNo] FROM [tblUsers] WHERE ([UserType] = @UserType) ORDER BY [Name]">
        <SelectParameters>
            <asp:Parameter DefaultValue="Faculty" Name="UserType" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


