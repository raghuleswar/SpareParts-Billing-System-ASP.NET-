<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="LoginPage.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height: 281px;
            border-style: solid;
            border-width:2px;
        }
        .auto-style3 {
            height: 33px;
        }
        .auto-style4 {
            width: 30%;
            height: 50px;
        }
        .auto-style5 {
            width: 222px;
        }
        </style>
    <link href="Css/menu.css" rel="stylesheet" />
</head>
<body>
    
   <h1> <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Automobile Spare Parts"></asp:Label></h1>
            <br />
    <form id="form1" runat="server">
    <div class="d1">
            <div class="samp">
                <ul>
                    <li><asp:HyperLink ID="link" runat="server" NavigateUrl="~/Dashboard.aspx">Home</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/History.aspx">History</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp; </li>
                    <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AddToCart.aspx">Show Cart</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp; </li>
                    
                    
                    <li class="username">
                        <asp:Label ID="Label9" runat="server"></asp:Label>
                    </li>
                    
                    
                    <li class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </li>
                    <li>
                    </li>
                    
                    
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li>
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/LoginCss.aspx" Width="122px">Logout</asp:HyperLink>
                    </li>
                    
                    
                </ul>
                
            </div>
        
        </div>
        <div>

           <h3>Your Cart Items : <asp:Label CssClass="na" ID="Label3" runat="server" Font-Bold="True" ></asp:Label></h3>
            <table class="auto-style4" align="center">
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="227px"></asp:TextBox>
                        <asp:Button ID="Button2" runat="server" Height="28px" OnClick="Button2_Click" Text="Search" Width="85px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            
            <br />
&nbsp;&nbsp;&nbsp;

            
            
            <asp:DataList ID="DataList1" align="center" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="0px" CellPadding="10" CellSpacing="5" DataSourceID="SqlDataSource1" ForeColor="Black"  OnItemCommand="DataList1_ItemCommand" RepeatColumns="4" RepeatDirection="Horizontal" Width="600px" Height="400px">
                
                

                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="white" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="White" />
                <ItemTemplate>
                    <table align="center" border="0" cellpadding="5" class="auto-style2">
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="ProductId"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("ProductId") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image1" runat="server" width="300" height="300" ImageUrl='<%# Eval("ProductImage") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Price :
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Quantity
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("ProductId")%>' CommandName="addtocart" Text="Add To Cart" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#000099" Font-Bold="false" ForeColor="White" />
            </asp:DataList>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CartConnectionString %>" SelectCommand="SELECT * FROM [ProductDetails] WHERE ([ProductName] = @ProductName)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="ProductName" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CartConnectionString %>" SelectCommand="SELECT * FROM [ProductDetails]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
