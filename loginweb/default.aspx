<%@ Page Explicit="True" Language="VB" Debug="True" validateRequest="false" %>
<%@ import Namespace="System.Data" %>
<%@ import Namespace="System.Data.OleDb" %>
<script language="VB" runat="Server">
	Sub Page_Load()
		UserAuth.Text = User.Identity.Name
	End Sub
	Sub doLogout(Src As Object, E As EventArgs)
		FormsAuthentication.SignOut()
		Response.Redirect("login.aspx")
	End Sub
</script>
<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<link rel="stylesheet" href="incs/styles.css" type="text/css">
<title>Welcome</title>
</head>

<body>

<table border="0" cellpadding="0" cellspacing="0" width="100%" height="20">
	<form runat="server">
		<tr>
			<td height="20" width="50%"><font face="Tahoma" size="2">User<font color="#0000CC">
			<asp:Label Runat="server" ID="UserAuth"></asp:Label>&nbsp;</font>is 
			now logged in</font></td>
			<td height="20" width="50%" align="right">
			<font face="Verdana" size="2"><a href="logout.aspx">
			<font face="Tahoma" size="2">
			<asp:LinkButton Runat="server" OnClick="doLogout" ID="linkLogout">Logout</asp:LinkButton>
			</font></a></font></td>
		</tr>
	</form>
</table>
<p><font face="Tahoma" size="2">Here is the protected area of the site where only 
logged in users have access. You may now use the code in this page for other pages. 
Thanks for downloading and don&#39;t forget to vote for my code in Planet source code!</font></p>

</body>

</html>
