<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="InterviewProcess.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            height: 23px;
            width: 128px;
        }
        .auto-style3 {
            width: 128px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style2" aria-setsize="30%"></td>
                <td class="auto-style1">
                    <h1>
                    <asp:Label ID="Label7" runat="server" ForeColor="Lime" Text="USER DETAILS"></asp:Label>
                </h1>
                        </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td aria-setsize="30%" class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td aria-setsize="30%" class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Text="Role"></asp:Label>
                &nbsp;:</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>HR</asp:ListItem>
                        <asp:ListItem>Panel</asp:ListItem>
                        <asp:ListItem>Receptionist</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td aria-setsize="30%" class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td aria-setsize="30%" class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                &nbsp;:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td aria-setsize="30%" class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td aria-setsize="30%" class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Contact"></asp:Label>
                &nbsp;:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td aria-setsize="30%" class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td aria-setsize="30%" class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                &nbsp;:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td aria-setsize="30%" class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td aria-setsize="30%" class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                &nbsp;:</td>
                <td>
                    <input id="Password1" type="password" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td aria-setsize="30%" class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" aria-setsize="30%">
                    <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
                    :</td>
                <td class="auto-style1">
                    <input id="Password2" type="password" /></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td aria-setsize="30%" class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td aria-setsize="30%" class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Save" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td aria-setsize="30%" class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td aria-setsize="30%" class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
