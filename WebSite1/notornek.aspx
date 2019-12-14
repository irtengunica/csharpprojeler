<%@ Page Language="C#" AutoEventWireup="true" CodeFile="notornek.aspx.cs" Inherits="yasornek" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div>
    
        100 üzerinden notunuzu giriniz:<br />
        <asp:TextBox ID="TextBox1" runat="server">0</asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="Bu Alan Boş Bırakılamaz" ForeColor="Red"></asp:RequiredFieldValidator>
    
    </div>
        <p>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="0 ile 100 arası bir sayı giriniz" MaximumValue="100" MinimumValue="0" ForeColor="Red" Type="Integer"></asp:RangeValidator>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Not Bul" />
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
    
    </div>
    </form>
</body>
</html>
