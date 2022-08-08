<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginCss.aspx.cs" Inherits="LoginPage.LoginCss" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Css/Trans.css" />
</head>
<body>
    
        <div class="registration-box">
            <h2>Login to our SPare management system</h2>
            <form id="form1" runat="server">
            <div class="form-content">
                <label>Username:</label>
                <asp:TextBox ID="txtUser" runat="server" placeholder="Enter Username" CssClass="inputbox"></asp:TextBox>

                <label>Password:</label>
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password" placeholder="Enter Password" CssClass="inputbox" ></asp:TextBox>

                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />

                <asp:Label ID="lblError" runat="server" Text="Incorrect User Credentials!!" ForeColor="Red" CssClass="labeltext"></asp:Label>

                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="labeltext"  NavigateUrl="~/SignUpCSS.aspx">Doesn&#39;t have an account!! Sign Up Now!!</asp:HyperLink>
           

            </div>

                </form>
        </div>
    
</body>
</html>

