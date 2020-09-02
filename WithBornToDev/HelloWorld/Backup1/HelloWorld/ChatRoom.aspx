<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChatRoom.aspx.cs" Inherits="HelloWorld.ChatRoom" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Chat Box<br />
        <asp:ListBox ID="lst_Chat" runat="server" Height="524px" Width="849px">
        </asp:ListBox>
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Width="448px"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Sent" 
            Width="90px" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="ชื่อ :"></asp:Label>
&nbsp;
        <asp:TextBox ID="txt_Name" runat="server"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
