<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fordöngüsü.aspx.cs" Inherits="fordöngüsü" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-weight: 700">
    
        Başlangıç Değer:<asp:TextBox ID="txtSayi1" runat="server">1</asp:TextBox>
        (txtSayi1)<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSayi1" EnableClientScript="False" ErrorMessage="Boş olamaz"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtSayi1" EnableClientScript="False" ErrorMessage="Yanlış Giriş" MaximumValue="1000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
        <br />
        Bitiş Değeri:<asp:TextBox ID="txtsayi2" runat="server">1</asp:TextBox>
        (txtsayi2)<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtsayi2" EnableClientScript="False" ErrorMessage="Boş olamaz"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtsayi2" EnableClientScript="False" ErrorMessage="Yanlış Giriş" MaximumValue="1000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
        <br />
        <asp:Button ID="btnAdyaz" runat="server" OnClick="btnAdyaz_Click" Text="Adımı yaz" />
        (btnAdyaz)<br />
    
    </div>
    </form>
</body>
</html>
