<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p>
        Login Here</p>
    <table class="style1">
        <tr>
            <td width="100px">
                User Name</td>
            <td width="150px">
                <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtuname" ErrorMessage="Please Enter User Name" 
                    ForeColor="Red" SetFocusOnError="True">Please Enter User Name</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="100px">
                Password</td>
            <td width="150px">
                <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpwd" ErrorMessage="Please enter Password" ForeColor="Red" 
                    SetFocusOnError="True">Please enter Password</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="100px">
                User Type</td>
            <td width="150px">
                <asp:ListBox ID="lstUtype" runat="server">
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Faculty</asp:ListItem>
                    <asp:ListItem>Student</asp:ListItem>
                </asp:ListBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="100px">
                &nbsp;</td>
            <td width="150px">
                <asp:Button ID="btnlogin" runat="server" Text="Login" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="100px">
                &nbsp;</td>
            <td width="150px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


