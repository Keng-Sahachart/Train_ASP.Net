<%@ Page Language="C#" Debug="true" %>
<script runat="server">
    void Page_Load(object sender, EventArgs e)		     
	{
		this.lblText.Text = " maintain Text From Label";
		Response.Write("Write Text From Response.Write");
	}
</script>
<html>
<head>
<title>Testing Response Object</title>
</head>
<body>
	<form id="form1" runat="server">	
	<asp:Label id="lblText" runat="server"></asp:Label>
	</form>
</body>
</html>