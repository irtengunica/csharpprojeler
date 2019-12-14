<%@ Page Language="C#" AutoEventWireup="true" CodeFile="asalsayilar.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Sayı Gir:<asp:TextBox ID="txtSayi" runat="server" Font-Bold="True" Font-Size="35pt" ForeColor="Blue" Height="78px" Width="128px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSayi" EnableClientScript="False" ErrorMessage="Boş bırakamazsınız"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtSayi" EnableClientScript="False" ErrorMessage="0 ile 100000  arası bir değer girin" MaximumValue="100000" MinimumValue="0" Type="Integer"></asp:RangeValidator>
    
        <br />
        <asp:Button ID="btnAsalkontrol" runat="server" OnClick="btnAsalkontrol_Click" Text="Asal Sayımıdır?" />
    
    </div>
    </form>
</body>
</html>
