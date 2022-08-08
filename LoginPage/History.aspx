<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="LoginPage.History" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Css/menu.css" rel="stylesheet" />
    <style type="text/css">
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1> <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="My Orders"></asp:Label></h1>
            <br />
    <div class="d1">
            <div class="samp">
                <ul>
                    <li><asp:HyperLink ID="link" runat="server" NavigateUrl="~/Dashboard.aspx">Home</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/History.aspx">History</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AddToCart.aspx">Show Cart</asp:HyperLink></li>

                    <li>
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/LoginCss.aspx" Width="122px">Logout</asp:HyperLink>
                    </li>
                   
                    
                    
                </ul>
                
            </div>
        
        </div>
        <br />
        
          <asp:Label ID="Label9" runat="server"></asp:Label>&nbsp;
        
        <br />
    <br />
        
        
        <br />
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="1">
            <ItemTemplate>
                <table border="1" >
                    <tr>
    <th>Product Id</th>
    <th>Product Name</th>
    <th>Quantity</th>
    <th>Total Price</th>
  </tr>
                    <tr>
                        <td >
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("ProductId") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("TotalPrice") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        

        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SpareSystemConnectionString %>" SelectCommand="SELECT [Quantity], [TotalPrice], [ProductName], [ProductId] FROM [Orders] WHERE ([username] = @username)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label9" Name="username" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
    
    
</body>
</html>