<%@ Page Title="" Language="VB" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="false" CodeFile="Subjects.aspx.vb" Inherits="Subjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Select Subjects:</p>
    <p>
        <asp:CheckBoxList ID="chklSubjects" runat="server">
            <asp:ListItem>ASP.NET</asp:ListItem>
            <asp:ListItem>Unix</asp:ListItem>
            <asp:ListItem>OS II</asp:ListItem>
            <asp:ListItem>PHP</asp:ListItem>
            <asp:ListItem>NT</asp:ListItem>
        </asp:CheckBoxList>
    </p>
    <p>
        <asp:RadioButtonList ID="rbdlSUbjects" runat="server">
            <asp:ListItem>Scope</asp:ListItem>
            <asp:ListItem>PT</asp:ListItem>
            <asp:ListItem>Saptdhara</asp:ListItem>
            <asp:ListItem>NCC NSS</asp:ListItem>
        </asp:RadioButtonList>
    </p>
    <p>
        <asp:Button ID="btnConfirm" runat="server" Text="Confirm" />
    </p>
    <p>
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </p>
</asp:Content>

