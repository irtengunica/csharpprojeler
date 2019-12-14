<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fordongusu6.aspx.cs" Inherits="fordongusu3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Döngü Başlangiç değeri:<asp:TextBox ID="txtSayibas" runat="server" Font-Bold="True" Font-Size="35pt" ForeColor="Blue" Height="78px" Width="128px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSayibas" EnableClientScript="False" ErrorMessage="Boş bırakamazsınız"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtSayibas" EnableClientScript="False" ErrorMessage="0 ile 100  arası bir değer girin" MaximumValue="1000" MinimumValue="0" Type="Integer"></asp:RangeValidator>
    
        <br />
        Döngü bitiş değeri:<asp:TextBox ID="txtSayibit" runat="server" Font-Bold="True" Font-Size="35pt" ForeColor="Blue" Height="78px" Width="128px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSayibit" EnableClientScript="False" ErrorMessage="Boş bırakamazsınız"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtSayibit" EnableClientScript="False" ErrorMessage="0 ile 100  arası bir değer girin" MaximumValue="1000" MinimumValue="0" Type="Integer"></asp:RangeValidator>
    
        <br />
        <br />
        <asp:Button ID="btnBas0" runat="server" OnClick="btnBas0_Click" Text="Bana Bas" />
    
    </div>
    </form>
</body>
</html>
