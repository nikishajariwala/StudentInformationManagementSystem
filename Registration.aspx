<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Registration.aspx.vb" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            text-align: center;
            color: #000099;
        }
        .style7
        {
            height: 23px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p class="style6">
        <strong>Registration Form</strong></p>
    <table class="style1">
        <tr>
            <td width="200px">
                Name</td>
            <td width="250px">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="200px">
                Address</td>
            <td width="250px">
                <asp:TextBox ID="txtaddress" runat="server" Height="78px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="200px">
                Birth Date</td>
            <td width="250px">
                <asp:TextBox ID="txtbdate" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="200px">
                &nbsp;</td>
            <td width="250px">
                <asp:Calendar ID="calbdate" runat="server"></asp:Calendar>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="200px">
                Gender</td>
            <td width="250px">
                <asp:RadioButton ID="rdbmale" runat="server" GroupName="G1" Text="Male" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rdbfemale" runat="server" GroupName="G1" Text="Female" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" width="200px">
                Hobbies</td>
            <td class="style7" width="250px">
                <asp:CheckBox ID="chkDance" runat="server" Text="Dancing" />
                <asp:CheckBox ID="chkRead" runat="server" Text="Reading" />
                <asp:CheckBox ID="chkSwim" runat="server" Text="Swimming" />
            </td>
            <td class="style7">
            </td>
        </tr>
        <tr>
            <td width="200px">
                Age</td>
            <td width="250px">
                <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="txtage" ErrorMessage="Please Enter Age between 18-30" 
                    ForeColor="Red" MaximumValue="30" MinimumValue="18" SetFocusOnError="True" 
                    Type="Integer">Please enter proper age</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td width="200px">
                User Name</td>
            <td width="250px">
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtusername" ErrorMessage="Please enter user name" 
                    ForeColor="Red" SetFocusOnError="True">Please enter Proper User Name</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="200px">
                Password</td>
            <td width="250px">
                <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpwd" ErrorMessage="Please enter password" ForeColor="Red" 
                    SetFocusOnError="True">Please Enter Proper Password</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="200px">
                Confirm Password</td>
            <td width="250px">
                <asp:TextBox ID="txtcpwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpwd" ControlToValidate="txtcpwd" 
                    ErrorMessage="Please enter password" ForeColor="Red" SetFocusOnError="True">Please Enter Confirm Password same as password</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td width="200px">
                Email</td>
            <td width="250px">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Please enter email" ForeColor="Red" 
                    SetFocusOnError="True" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Please enter proper email</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td width="200px">
                User Type</td>
            <td width="250px">
                <asp:DropDownList ID="ddlusertype" runat="server">
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Faculty</asp:ListItem>
                    <asp:ListItem>Student</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="200px">
                Mobile Number</td>
            <td width="250px">
                <asp:TextBox ID="txtmobileno" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ControlToValidate="txtmobileno" ErrorMessage="Please enter mobile no" 
                    ForeColor="Red" SetFocusOnError="True">Please enter proper mobile no</asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td width="200px">
                &nbsp;</td>
            <td width="250px">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" />
                <asp:Button ID="btnreset" runat="server" Text="Reset" 
                    CausesValidation="False" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="200px">
                &nbsp;</td>
            <td width="250px">
                &nbsp;</td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>


