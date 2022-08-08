<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="LoginPage.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 86%;
            height: 641px;
        }
        .auto-style4 {
            text-align: left;
            background-color: #FFFFCC;
        }
        .auto-style5 {
            height: 48px;
            text-align: left;
            background-color: #FFFFCC;
        }
        .auto-style6 {
            height: 514px;
            background-color: #FFFFFF;
        }
        .auto-style7 {
            text-align: center;
            height: 35px;
            background-color: #FFFFCC;
        }
        .auto-style8 {
            height: 48px;
            text-align: center;
            width: 302px;
            background-color: #FFFFCC;
        }
        .auto-style9 {
            text-align: center;
            width: 302px;
            background-color: #FFFFCC;
        }
        .auto-style10 {
            text-align: center;
            height: 55px;
        }
        .auto-style13 {
            text-align: left;
            width: 302px;
            height: 37px;
            background-color: #FFFFCC;
        }
        .auto-style14 {
            margin-top: 0px;
        }
        .auto-style15 {
            text-align: center;
            width: 302px;
            height: 50px;
            background-color: #FFFFCC;
        }
        .auto-style16 {
            text-align: left;
            height: 50px;
            background-color: #FFFFCC;
        }
        .auto-style17 {
            text-align: center;
            width: 302px;
            height: 49px;
            background-color: #FFFFCC;
        }
        .auto-style18 {
            text-align: left;
            height: 49px;
            background-color: #FFFFCC;
        }
        .auto-style21 {
            height: 43px;
            text-align: center;
            width: 302px;
            background-color: #FFFFCC;
        }
        .auto-style22 {
            height: 43px;
            text-align: left;
            background-color: #FFFFCC;
        }
        .auto-style24 {
            height: 42px;
            text-align: center;
            width: 302px;
            background-color: #FFFFCC;
        }
        .auto-style25 {
            height: 42px;
            text-align: left;
            background-color: #FFFFCC;
        }
        .auto-style26 {
            height: 41px;
            text-align: center;
            width: 302px;
            background-color: #FFFFCC;
        }
        .auto-style27 {
            height: 41px;
            text-align: left;
            background-color: #FFFFCC;
        }
        .auto-style28 {
            height: 37px;
            text-align: left;
            background-color: #FFFFCC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style10">Sign Up!!</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <table align="center" border="3" class="auto-style3">
                            <tr>
                                <td class="auto-style7" colspan="2">New User Sign Up</td>
                            </tr>
                            <tr>
                                <td class="auto-style8">UserName</td>
                                <td class="auto-style5">
                                    <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="307px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="#6699FF" BorderStyle="Double" BorderWidth="2px" Height="36px" Text="Check Availability" Width="217px" OnClick="Button1_Click" />
                                    <br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="UserName must only contain numeric and alphabet values. No special character allowed" ForeColor="#FF3300" ValidationExpression="[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>
                                    <br />
                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9">Password</td>
                                <td class="auto-style4">
                                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="35px" Width="485px"></asp:TextBox>
                                    <br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage=" Minimum 8 Characters atleast 1 Uppercase Alphabet, 1 Lowercase Alphabet, 1 Number and 1 Special Character." ForeColor="#FF3300" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&amp;])[A-Za-z\d@$!%*?&amp;]{8,}$"></asp:RegularExpressionValidator>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9">Confirm Password</td>
                                <td class="auto-style4">
                                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Height="35px" Width="485px"></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label3" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9">Name</td>
                                <td class="auto-style4">
                                    <asp:TextBox ID="TextBox4" runat="server" Height="35px" Width="485px"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid Name" ForeColor="#FF3300" ValidationExpression="[a-zA-Z_ ]*$"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style15">Address</td>
                                <td class="auto-style16">
                                    <asp:TextBox ID="TextBox5" runat="server" Height="35px" Width="485px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style17">City</td>
                                <td class="auto-style18">
                                    <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style14" Height="35px" Width="485px"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Invalid City Name" ForeColor="#FF3300" ValidationExpression="[a-zA-Z_ ]*$"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style24">State</td>
                                <td class="auto-style25">
                                    <asp:TextBox ID="TextBox7" runat="server" Height="35px" Width="485px"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="Invalid State Name" ForeColor="#FF3300" ValidationExpression="[a-zA-Z_ ]*$"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style21">Mobile Number</td>
                                <td class="auto-style22">
                                    <asp:TextBox ID="TextBox8" runat="server"  Height="35px" Width="485px"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox8" ErrorMessage="Invalid Mobile Number" ForeColor="#FF3300" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style26">Email</td>
                                <td class="auto-style27">
                                    <asp:TextBox ID="TextBox9" runat="server" TextMode="Email" Height="35px" Width="485px"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox9" ErrorMessage="Invalid Email" ForeColor="#FF3300" ValidationExpression="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style13">
                                    <asp:Label ID="Label2" runat="server"></asp:Label>
                                </td>
                                <td class="auto-style28">
                                    <asp:Button ID="Button2" runat="server" BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" Font-Italic="False" Height="51px" OnClick="Button2_Click" Text="Sign Up" Width="142px" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br />
                        <br />
                        Thanks for choosing our Online Spares Billing System</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
