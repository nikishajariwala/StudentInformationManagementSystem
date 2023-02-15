<%@ Page Title="" Language="VB" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="false" CodeFile="ListOfCourses.aspx.vb" Inherits="ListOfCourses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Following is the list of Courses:</p>
    <asp:BulletedList ID="BulletedList1" runat="server" BulletStyle="Square" 
        FirstBulletNumber="10">
        <asp:ListItem>BCA</asp:ListItem>
        <asp:ListItem>MCA</asp:ListItem>
        <asp:ListItem>BBA</asp:ListItem>
        <asp:ListItem>MBA</asp:ListItem>
    </asp:BulletedList>
    <p>
    </p>
</asp:Content>

