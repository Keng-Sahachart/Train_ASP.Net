﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowData_ByCookie.aspx.cs" Inherits="HelloWorld.ShowData_ByCookie" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="Label2" runat="server" Text="LastName"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>
