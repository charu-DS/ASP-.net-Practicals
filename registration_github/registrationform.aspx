<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrationform.aspx.cs" Inherits="registration8416.registrationform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 31px;
        }
        .auto-style3 {
            width: 229px;
        }
        .auto-style4 {
            height: 31px;
            width: 229px;
        }
        .auto-style5 {
            width: 218px;
        }
        .auto-style6 {
            height: 31px;
            width: 218px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Registration Form<br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Name</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" SetFocusOnError="True">* Name is compulsory</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Password</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" ErrorMessage="CustomValidator" ForeColor="#FF3300" OnServerValidate="CustomValidator1_ServerValidate">Should be between 8 &amp; 13</asp:CustomValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" SetFocusOnError="True">* Password is required</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Confirm Password</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="CompareValidator" ForeColor="Red" SetFocusOnError="True">Password doesnt match</asp:CompareValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" SetFocusOnError="True">Re enter the password</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Email</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" Display="Dynamic" EnableViewState="False" ErrorMessage="Email is wrong" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email is wrong</asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" SetFocusOnError="True">* Email is compulsory</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Mobile Number</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[7-9][0-9]{9}$">Phone number is not Indian</asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" SetFocusOnError="True">* Phone number is compulsory</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Age</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="RangeValidator" ForeColor="Red" MaximumValue="100" MinimumValue="8" SetFocusOnError="True" Type="Integer">Thats not correct age</asp:RangeValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" SetFocusOnError="True">* Age is compulsory</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Smash It!" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
