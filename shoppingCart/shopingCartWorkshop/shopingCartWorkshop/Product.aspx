<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="shopingCartWorkshop.Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product</title>
</head>
<body>
    <h2> Product </h2>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" DataSourceID="ds_ShoppingCart">
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Picture" HeaderText="Picture" SortExpression="Picture" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="ds_ShoppingCart" runat="server" ConnectionString="<%$ ConnectionStrings:shoppingCartConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
        </div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ViewCart.aspx">viewCart</asp:HyperLink>
    </form>
</body>
</html>
