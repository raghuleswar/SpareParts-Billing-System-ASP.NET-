<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpCSS.aspx.cs" Inherits="LoginPage.SignUpCSS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Spare Management System</title>
    <link rel="stylesheet" href="Css/Trans.css" />
    <style type="text/css">
        .auto-style1 {
            display: block;
            margin-left: auto;
            margin-right: auto;
            padding-bottom: 15px;
            font-size: 100%;
            font-weight: bold;
            text-align: center;
        }
    </style>
</head>
<body>
    
        <div class ="registration-box">
            <img src="engine.jpg" />
            <h2>Sign Up for our spare management system</h2>
            <form id="form1" runat="server">
                <div>
                    <label>Username:<br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="UserName must only contain numeric and alphabet values. No special character allowed" ForeColor="#FF3300" ValidationExpression="[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>
                                    </label>
                    &nbsp;<asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Username" CssClass="inputbox"></asp:TextBox>
                     
                    <label>Password:<br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage=" Minimum 8 Characters atleast 1 Uppercase Alphabet, 1 Lowercase Alphabet, 1 Number and 1 Special Character." ForeColor="#FF3300" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&amp;])[A-Za-z\d@$!%*?&amp;]{8,}$"></asp:RegularExpressionValidator>
                                    </label>
                    &nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="Enter Password" CssClass="inputbox" ></asp:TextBox>

                    <label>Confirm Password:<br />
                                    <asp:Label ID="Label3" runat="server"></asp:Label>
                                </label>
                    &nbsp;<asp:TextBox ID="TextBox3" runat="server" TextMode="Password" placeholder="Enter Confirm Password" CssClass="inputbox" ></asp:TextBox>

                    <label>Name:<br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid Name" ForeColor="#FF3300" ValidationExpression="[a-zA-Z_ ]*$"></asp:RegularExpressionValidator>
                                </label>
                    &nbsp;<asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Your Name" CssClass="inputbox"></asp:TextBox>

                    <label>Address:</label>
                    <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Your Address" CssClass="inputbox"></asp:TextBox>

                    <label>City:<br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Invalid City Name" ForeColor="#FF3300" ValidationExpression="[a-zA-Z_ ]*$"></asp:RegularExpressionValidator>
                                </label>
                    &nbsp;<asp:TextBox ID="TextBox6" runat="server" placeholder="Enter Your City" CssClass="inputbox"></asp:TextBox>

                    <label>State:<br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="Invalid State Name" ForeColor="#FF3300" ValidationExpression="[a-zA-Z_ ]*$"></asp:RegularExpressionValidator>
                                </label>
                    &nbsp;<asp:TextBox ID="TextBox7" runat="server" placeholder="Enter Your State" CssClass="inputbox"></asp:TextBox>

                    <label>Mobile Number:<br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox8" ErrorMessage="Invalid Mobile Number" ForeColor="#FF3300" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                </label>
                    &nbsp;<asp:TextBox ID="TextBox8" runat="server" placeholder="Enter Your Mobile Number" CssClass="inputbox"></asp:TextBox>

                    <label>Email Address:<br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox9" ErrorMessage="Invalid Email" ForeColor="#FF3300" ValidationExpression="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"></asp:RegularExpressionValidator>
                                </label>&nbsp;<asp:TextBox ID="TextBox9" runat="server" placeholder="Enter Email Address" CssClass="inputbox"></asp:TextBox>

                    <asp:Button ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />

                <center><asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style1"  NavigateUrl="~/LoginCss.aspx" Height="16px" Width="226px">Back to Login</asp:HyperLink></center>
           

                    <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Width="558px"></asp:Label>

                                    <asp:Label ID="Label2" runat="server"></asp:Label>

                </div>
                 </form>
        </div>
   
</body>
</html>
