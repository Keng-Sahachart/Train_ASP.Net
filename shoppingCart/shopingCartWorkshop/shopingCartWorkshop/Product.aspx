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
            <asp:GridView ID="gv_prd" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" OnRowDataBound="gv_prd_RowDataBound">
                <Columns>
                    <asp:BoundField DataField="Picture" HeaderText="Picture" SortExpression="Picture" />
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" ReadOnly="True" SortExpression="ProductName" />
                    <asp:BoundField DataField="Price" HeaderText="Price" ReadOnly="True" SortExpression="Price" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ViewCart.aspx">viewCart</asp:HyperLink>
    </form>
</body>
</html>
