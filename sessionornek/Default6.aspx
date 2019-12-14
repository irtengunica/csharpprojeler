<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default6.aspx.cs" Inherits="Default6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Lütfen bir sayı giriniz:<asp:TextBox ID="txtsayi" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtsayi" EnableClientScript="False" ErrorMessage="0 ile 100 arası" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
        <br />
        <asp:Button ID="BtnGir" runat="server" OnClick="BtnGir_Click" Text="Tahmin Et" />
    
    </div>
    </form>
</body>
</html>
