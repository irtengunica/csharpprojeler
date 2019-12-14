<%@ Page Explicit="True" Language="VB" Debug="True" validateRequest="false" %>
<%@ import Namespace="System.Data" %>
<%@ import Namespace="System.Data.OleDb" %>
<script language="VB" runat="Server">
	Sub btnLogin_OnClick(Src As Object, E As EventArgs)
		If Page.IsValid Then
			Dim MyAddress As String
			Dim MyConn As OleDbConnection
			Dim MySQL As String
			Dim MyRs As String
			Dim MyCount As OleDbCommand
			Dim MyPassword As OleDbCommand
			Dim IntUserCount As Integer
			Dim strPassword As String

			If Request.QueryString("ReturnUrl") = "" Then
				MyAddress = "default.aspx"
			Else
				MyAddress = Request.QueryString("ReturnUrl")
			End If

			MySQL  = "SELECT COUNT(*) FROM Users WHERE Username = '" & txtUsername.Text & "'"
			MyRs = "SELECT Password FROM Users Where Username = '" & txtUsername.Text & "'"
			MyConn = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.MapPath ("Data/dbUsers.mdb") & ";")
			MyCount = New OleDbCommand(MySQL, MyConn)
			MyPassword = New OleDbCommand(MyRs, MyConn)

			MyConn.Open()
			IntUserCount = MyCount.ExecuteScalar()
			strPassword = MyPassword.ExecuteScalar()
			MyConn.Close()

			If IntUserCount > 0 Then
				If strPassword = txtPassword.Text Then
					FormsAuthentication.SetAuthCookie(txtUsername.Text, True)
					Response.Redirect(MyAddress)
				Else
					lblMsg.Text = "Invalid Password..."
				End If
			Else
				lblMsg.Text = "Invalid Username..."
			End If
		Else
			Exit Sub
		End If
	End Sub
</script>
<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<link rel="stylesheet" href="incs/styles.css" type="text/css">
<script language="javascript">
<!--
	function onload()
	{
	document.getElementById('txtUsername').focus();
	}
//-->
</script>
<title>Login</title>
</head>

<body onload="onload();">

<div align="center">
	<form runat="server">
		<table cellpadding="0" cellspacing="2" width="250" height="115" class="tblMain">
			<tr>
				<td height="28" align="center" width="236" colspan="2">
				<asp:Label CssClass="Treb10Blue" Runat="server" ID="lblMsg"></asp:Label>
				</td>
			</tr>
			<tr>
				<td height="24" width="68"><font face="Tahoma" size="2">
				<label for="txtUsername">Username:</label></font></td>
				<td height="24" width="159">
				<asp:TextBox ID="txtUsername" CssClass="Treb10Blue" Runat="server"></asp:TextBox>
				<asp:RequiredFieldValidator Runat="server" ErrorMessage="*" Display="Dynamic" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
				<td height="24" width="68"><font face="Tahoma" size="2">
				<label for="txtPassword">Password:</label></font></td>
				<td height="24" width="159">
				<asp:TextBox ID="txtPassword" CssClass="Treb10Blue" Runat="server" TextMode="Password"></asp:TextBox>
				<asp:RequiredFieldValidator Runat="server" ErrorMessage="*" Display="Dynamic" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
				<td height="29" align="right" width="74"></td>
				<td height="29" align="center" width="159">
				<asp:Button ID="btnLogin" Runat="server" CssClass="button" Text="Login" OnClick="btnLogin_OnClick"></asp:Button>
				</td>
			</tr>
		</table>
	</form>
</div>
<div align="center">
<a href="register.aspx">Register now!</a>
<br>
<hr noshade size="1px" color="#b0bec7" width="80%">
	<font face="Tahoma" size="2"><a href="default.aspx">Here</a> is the page we 
	are actually protecting. If you are not logged in, you will be redirected to 
	this page again!</font></div>

</body>

</html>
