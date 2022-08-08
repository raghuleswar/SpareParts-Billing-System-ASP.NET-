<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginPage.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 509px;
            height: 197px;
            background-color: #FFFF99;
        }
        .auto-style3 {
            text-align: left;
            height: 58px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            height: 67px;
        }
        .auto-style6 {
            height: 63px;
        }
        .auto-style7 {
            height: 58px;
        }
        .auto-style8 {
            height: 49px;
        }
        .auto-style9 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
            <br />
            <table style="margin:auto;border:5px solid white" class="auto-style2">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" Text="UserName" Font-Size="Large"></asp:Label></td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtUser" runat="server" CssClass="auto-style4" Height="36px" Width="262px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label2" runat="server" Text="Password" Font-Size="Large"></asp:Label></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Height="35px" Width="257px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        </td>
                    <td class="auto-style7">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" BorderColor="#3366FF" BorderWidth="5px" CssClass="auto-style8" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Height="40px" Width="104px" /></td>
                </tr>

                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style9">
                        <asp:Label ID="lblError" runat="server" Text="Incorrect User Credentials!!" ForeColor="Red"></asp:Label></td>
                </tr>
                
            </table>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style5" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" NavigateUrl="~/SignUp.aspx">Doesn&#39;t have an account!! Sign Up Now!!</asp:HyperLink>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
