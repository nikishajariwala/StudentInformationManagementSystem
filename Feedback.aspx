<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Feedback.aspx.vb" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p>
        This is a Feedback Page. Kindly give your valuable feedback.</p>
    <table class="style1">
        <tr>
            <td width="150">
                <asp:Label ID="Label1" runat="server" Text="Enter Email"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="150">
                <asp:Label ID="Label2" runat="server" Text="Enter Feedback"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtfeedback" runat="server" Height="79px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="150">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnFeedback" runat="server" Text="Feedback" />
            </td>
        </tr>
        <tr>
            <td width="150">
                &nbsp;</td>
            <td>
                <asp:GridView ID="gvFeedback" runat="server" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>


