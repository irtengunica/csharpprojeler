<%@ Page Explicit="True" Language="VB" Debug="True" validateRequest="false" %>
<%@ import Namespace="System.Data" %>
<%@ import Namespace="System.Data.OleDb" %>
<script runat="server" language="VB">
	Function Fixquotes(thesqlenemy as String)
		Fixquotes = Replace(thesqlenemy, "'" , "''")
	End Function

	Sub btnRegister_Onclick(Src As Object, E As EventArgs)
		If page.IsValid Then
			Dim objConn       As IDbConnection = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.MapPath ("Data/dbUsers.mdb") & ";")
			Dim chkUsername   As IDbCommand
			Dim addUser       As IDbCommand
			Dim strSQL1       As String
			Dim strSQL2       As String
			Dim strUserCount  As Integer
	
			strSQL1 = "SELECT COUNT(*) FROM [Users] WHERE [Username]='" & Fixquotes(txtUsername.Text) & "'"
			strSQL2 = "INSERT INTO [Users] ([Fullname], [Email], [Username], [Password])"
			strSQL2 = strSQL2 & " VALUES "
			strSQL2 = strSQL2 & "('" & Fixquotes(txtFullname.Text) & "', '" & Fixquotes(txtEmail.Text) & "', '" & Fixquotes(txtUsername.Text) & "', '" & Fixquotes(txtPassword.Text) & "');"
			
			objConn.Open()
			chkUsername = New OleDbCommand(strSQL1, objConn)
			strUserCount = chkUsername.ExecuteScalar()
				If strUserCount = 0 Then
					addUser = New OleDbCommand(strSQL2, objCOnn)
					addUser.ExecuteNonQuery()
					objConn.Close
					Response.Redirect("login.aspx")
				Else
					lblMsg.Text = "Username already exists. Please choose another..."
				End If
			objConn.Close()
		End If
	End Sub
</script>
<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<link rel="stylesheet" href="incs/styles.css" type="text/css">
<title>Register</title>
</head>

<body>

<form runat="server">
	<div align="center">
		<table cellpadding="0" cellspacing="2" width="397" height="169" class="tblMain">
			<tr>
				<td height="32" align="center" width="383" colspan="2">
				<asp:Label CssClass="Treb10Blue" ID="lblMsg" Runat="Server"></asp:Label>
				</td>
			</tr>
			<tr>
				<td height="27" width="129"><font face="Tahoma" size="2">
				<label for="txtUsername">Choose a Username:</label></font></td>
				<td height="27" width="244">
				<asp:TextBox ID="txtUsername" CssClass="Treb10Blue" Runat="server"></asp:TextBox>
				<asp:RequiredFieldValidator Runat="server" ErrorMessage="*" Display="Dynamic" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
				<td height="27" width="129"><font face="Tahoma" size="2">
				<label for="txtPassword">Choose a password:</label></font></td>
				<td height="27" width="244">
				<asp:TextBox ID="txtPassword" CssClass="Treb10Blue" Runat="server" TextMode="Password"></asp:TextBox>
				<asp:RequiredFieldValidator Runat="server" ErrorMessage="*" Display="Dynamic" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
				<td height="27" width="129"><font face="Tahoma" size="2">
				<label for="txtFullname">Your Fullname:</label></font></td>
				<td height="27" width="244">
				<asp:TextBox ID="txtFullname" CssClass="Treb10Blue" Runat="server"></asp:TextBox>
				<asp:RequiredFieldValidator Runat="server" ErrorMessage="*" Display="Dynamic" ControlToValidate="txtFullname"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
				<td height="27" width="129"><font face="Tahoma" size="2">
				<label for="txtEmail">Your Email address:</label></font></td>
				<td height="27" width="244">
				<asp:TextBox ID="txtEmail" CssClass="Treb10Blue" Runat="server"></asp:TextBox>
				<asp:RequiredFieldValidator Runat="server" ErrorMessage="*" Display="Dynamic" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
				<asp:RegularExpressionValidator ControlToValidate="txtEmail" ValidationExpression=".*@.*\..*" ErrorMessage="*" Display="Dynamic" Runat="server"></asp:RegularExpressionValidator>
				</td>
			</tr>
			<tr>
				<td height="29" width="129">&nbsp;</td>
				<td height="29" width="244">
				<asp:Button ID="btnRegister" Runat="server" CssClass="button" Text="Register" OnClick="btnRegister_OnClick"></asp:Button>
				</td>
			</tr>
		</table>
	</div>
	<div align="center">
&nbsp;<hr noshade size="1px" color="#b0bec7" width="80%">
		<font face="Tahoma" size="2">Just remembered you already have an account? 
		Login <a href="login.aspx">Here!</a></font></div>
</form>

</body>

</html>
