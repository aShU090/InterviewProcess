<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CandidateDetail.aspx.cs" Inherits="InterviewProcess.CandidateDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 156px;
        }
        .auto-style3 {
            width: 236px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td aria-setsize="40%">
                        <h1>
                        <asp:Label ID="Label1" runat="server" ForeColor="Lime" Text="CANDIDATE DETAILS"></asp:Label>
                        </h1>
                    </td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td aria-setsize="40%">&nbsp;</td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Name :</td>
                    <td aria-setsize="40%">
                        <asp:TextBox ID="TextBox1" runat="server" Width="248px"></asp:TextBox>
                    </td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td aria-setsize="40%">&nbsp;</td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Email :</td>
                    <td aria-setsize="40%">
                        <asp:TextBox ID="TextBox2" runat="server" Width="249px"></asp:TextBox>
                    </td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td aria-setsize="40%">&nbsp;</td>
                    <td aria-setsize="30%">&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Contact :</td>
                    <td aria-setsize="40%">
                        <asp:TextBox ID="TextBox3" runat="server" Width="249px"></asp:TextBox>
                    </td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td aria-setsize="40%">&nbsp;</td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Date of Birth :</td>
                    <td aria-setsize="40%">
                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    </td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td aria-setsize="40%">&nbsp;</td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Skills :</td>
                    <td aria-setsize="40%">
                        <asp:TextBox ID="TextBox5" runat="server" Width="246px"></asp:TextBox>
                    </td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td aria-setsize="40%">&nbsp;</td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Year of Experience :</td>
                    <td aria-setsize="40%">
                        <asp:TextBox ID="TextBox6" runat="server" Width="247px"></asp:TextBox>
                    </td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td aria-setsize="40%">&nbsp;</td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">JobRole :</td>
                    <td aria-setsize="40%">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="257px">
                            <asp:ListItem>Associated Software Engineerer</asp:ListItem>
                            <asp:ListItem>Senior Software Engineerer</asp:ListItem>
                            <asp:ListItem>Principle Engineer</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td aria-setsize="40%">&nbsp;</td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">CV Upload :</td>
                    <td aria-setsize="40%">
                        <asp:FileUpload ID="FileUpload1" runat="server" Height="25px" Width="259px" />
                    </td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td aria-setsize="40%">&nbsp;</td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Photo Upload :</td>
                    <td aria-setsize="40%">
                        <asp:FileUpload ID="FileUpload2" runat="server" Height="24px" Width="257px" />
                    </td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td aria-setsize="40%">&nbsp;</td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Panel Name (Round 1) :</td>
                    <td aria-setsize="40%">
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="22px" Width="258px">
                            <asp:ListItem>Sourabh Shukla</asp:ListItem>
                            <asp:ListItem Value="Lakshman Kamath">Lakshman Kamath</asp:ListItem>
                            <asp:ListItem>Abhilash John</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td aria-setsize="40%">&nbsp;</td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Panel Name (Round 2) :</td>
                    <td aria-setsize="40%">
                        <asp:DropDownList ID="DropDownList3" runat="server" Height="19px" Width="254px">
                            <asp:ListItem>Sourabh Shukla</asp:ListItem>
                            <asp:ListItem>Abhilash John</asp:ListItem>
                            <asp:ListItem>Lakshman Kamath</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td aria-setsize="40%">&nbsp;</td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Interview Date :</td>
                    <td aria-setsize="40%">
                        <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
                    </td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td aria-setsize="40%">&nbsp;</td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Interview Time :</td>
                    <td aria-setsize="40%">
                        <asp:TextBox ID="TextBox4" runat="server" Width="248px"></asp:TextBox>
                    </td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td aria-setsize="40%">&nbsp;</td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Room :</td>
                    <td aria-setsize="40%">
                        <asp:DropDownList ID="DropDownList4" runat="server" Height="25px" Width="251px" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                            <asp:ListItem Value="1">Jazz</asp:ListItem>
                            <asp:ListItem Value="2">Country</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td aria-setsize="40%">&nbsp;</td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td aria-setsize="40%">
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td aria-setsize="40%">&nbsp;</td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td aria-setsize="40%">&nbsp;</td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td aria-setsize="40%">&nbsp;</td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td aria-setsize="40%">&nbsp;</td>
                    <td aria-setsize="30%">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
