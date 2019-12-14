<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fordongusu3.aspx.cs" Inherits="fordongusu3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Sayi Girin:<asp:TextBox ID="txtSayi" runat="server" Font-Bold="True" Font-Size="35pt" ForeColor="Blue" Height="78px" Width="128px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSayi" EnableClientScript="False" ErrorMessage="Boş bırakamazsınız"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtSayi" EnableClientScript="False" ErrorMessage="0 ile 100  arası bir değer girin" MaximumValue="1000" MinimumValue="0" Type="Integer"></asp:RangeValidator>
    
        <br />
        <asp:Button ID="btnBas" runat="server" OnClick="btnBas_Click" Text="Bana Bas" />
    
    </div>
    </form>
</body>
</html>
