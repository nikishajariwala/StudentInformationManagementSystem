<%@ Page Title="" Language="VB" MasterPageFile="~/FacultyMasterPage.master" AutoEventWireup="false" CodeFile="GetStudentDetails.aspx.vb" Inherits="GetStudentDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Select Report Type:</p>
    <p>
        <asp:LinkButton ID="lbtnrptAge" runat="server">Age</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lbtnrptgender" runat="server">Gender</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lbtnrptBoth" runat="server">Both</asp:LinkButton>
    </p>
    <p>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                Enter Age:
                <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                <asp:Button ID="btnrptage" runat="server" Text="Age Report" />
                <br />
                <asp:GridView ID="gvage" runat="server">
                </asp:GridView>
                <br />
                <asp:Button ID="btnback" runat="server" Text="Back" />
            </asp:View>
            <br />
            <asp:View ID="View2" runat="server">
                Select Gender:
                <asp:DropDownList ID="ddlgender" runat="server">
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="btnrptgender" runat="server" Text="Gender Report" />
                <br />
                <asp:GridView ID="gvgender" runat="server">
                </asp:GridView>
            </asp:View>
            <br />
            <asp:View ID="View3" runat="server">
                Enter Age:
                <asp:TextBox ID="txtbage" runat="server"></asp:TextBox>
                &nbsp;Select Gender:
                <asp:DropDownList ID="ddlbgender" runat="server">
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="btnboth" runat="server" Text="Age Gender Report" />
                <br />
                <asp:GridView ID="gvboth" runat="server">
                </asp:GridView>
            </asp:View>
        </asp:MultiView>
    </p>
</asp:Content>

