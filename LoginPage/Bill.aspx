<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bill.aspx.cs" Inherits="LoginPage.Bill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .btn {
            background-color: #00ffff;
            border: 1px solid #0094ff;
            height: 40px;
            border-radius: 20px;
            width: 60%;
            margin-left: 20%;
            margin-bottom: 20px;
            font-size: 15px;
            margin-top: 10px;
            font-weight: bold;
        }
        .bth:hover{
            background-color:#0094ff;
            border:1px solid #00ffff;
            transition:background-color 0.4s;
        }
        .labeltext{
            text-align:center;
            text-transform:uppercase;
            font-size:25px;
            margin-top:20px;
            font-family:Algerian;
        }
        .cs{
             background-color:#00ffff;
            border:1px solid #0094ff;
            margin:auto;
            height:auto;
            border-radius:20px;
            width:auto;
        }
        .d1:hover{
            background-color: green;
                    color: black;
                    font-size: 21px
        }
        .txt{
            display:block;
            margin-left:auto;
            margin-right:auto;
            font-size:200%;
            font-weight:bold;
            text-align:center;
        }
        
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <center><asp:Label ID="Label1" CssClass="labeltext" runat="server" Text="Automobiles Spare Parts"></asp:Label></center>
            <br />
           <p class="cs">
               <br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               Total Products :
            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
&nbsp; in Order bill&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="d1" NavigateUrl="~/Dashboard.aspx">Continue Shopping</asp:HyperLink>
            &nbsp;<asp:Label ID="Label3" CssClass="txt" runat="server" Text="Order Placed Successfully"></asp:Label>
          
               <br />
               </p>
           
          
             <center><h2>Consolidated Bill</h2></center><br />
            <center>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="401px"  ShowFooter="True" Width="970px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="S.No">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ProductId" HeaderText="Product ID">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ProductName" HeaderText="Product Name">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Price" HeaderText="Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="quantity" HeaderText="Quantity">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="ProductImage" HeaderText="Product Image">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:ImageField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Height="50px" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView></center>
            <asp:Button ID="Button1" CssClass="btn" runat="server" OnClick="Button1_Click" Text="Back to Home"  />
            <br />
        </div>
    </form>
</body>
</html>
