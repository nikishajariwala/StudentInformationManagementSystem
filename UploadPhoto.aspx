<%@ Page Title="" Language="VB" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="false" CodeFile="UploadPhoto.aspx.vb" Inherits="UploadPhoto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image ID="Image1" runat="server" AlternateText="Image in not uploaded" 
        Height="100px" Width="100px" />
    <br />
    select Image:
    <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;<asp:Button ID="btnupload" runat="server" Text="Upload" />
    <br />
</asp:Content>

