<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="HelloWorld.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" method="get">
    <div id="div1" runat="server">
        Test Method Get<br />
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
&nbsp;<asp:TextBox ID="txt_Name" runat="server" Height="22px">xxxxxxxx</asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="LastName"></asp:Label>
        <asp:TextBox ID="txt_Last" runat="server">zzzzzzzzzzz</asp:TextBox>
    
    </div>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Show Data By Get Method" 
            onclick="Button1_Click1" />
    </p>

    <br />
    Test Cookie<br />
    <asp:Label ID="Label3" runat="server" Text="Label">Name</asp:Label> 
    <asp:TextBox ID="txt_ck_Name" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Label">Last Name</asp:Label> 
    <asp:TextBox ID="txt_ck_LastName" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button2" runat="server" Text="Show Data By Cookie" Height="26px" 
        onclick="Button2_Click" />
    <br />
    <br />
    Test Session<br />
    <asp:Label ID="Label5" runat="server" Text="Label">Name</asp:Label> 
    <asp:TextBox ID="txt_ss_Name" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Label">Last Name</asp:Label> 
    <asp:TextBox ID="txt_ss_LastName" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button4" runat="server" Text="Show Data By Session" Height="26px" 
        onclick="Button4_Click" />
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
        Text="Go To ChatRoom" />
    </form>



    <% for (int x = 0; x < 10; x++)
       {%>

       Hello <%=x %>
       <br /> 

    <%} %>
    
</body>
</html>
