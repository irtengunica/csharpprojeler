<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dortislem.aspx.cs" Inherits="Dortislem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Sayi1:<asp:TextBox ID="txtSayi1" runat="server">0</asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSayi1" EnableClientScript="False" ErrorMessage="Boş olamaz"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtSayi1" EnableClientScript="False" ErrorMessage="Yanlış Giriş" MaximumValue="1000000" MinimumValue="-1000000" Type="Integer"></asp:RangeValidator>
        <br />
        İşlemSeç:<asp:DropDownList ID="DrlistIslem" runat="server">
            <asp:ListItem Value="+">+</asp:ListItem>
            <asp:ListItem Value="-">-</asp:ListItem>
            <asp:ListItem Value="*">*</asp:ListItem>
            <asp:ListItem Value="/">/</asp:ListItem>
            <asp:ListItem>%</asp:ListItem>
        </asp:DropDownList>
        <br />
        Sayi2:<asp:TextBox ID="txtSayi2" runat="server">0</asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSayi2" EnableClientScript="False" ErrorMessage="Boş olamaz"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtSayi2" EnableClientScript="False" ErrorMessage="Yanlış Giriş" MaximumValue="1000000" MinimumValue="-1000000" Type="Integer"></asp:RangeValidator>
        <br />
        <br />
        <asp:Button ID="btnIslem" runat="server" OnClick="btnIslem_Click" Text="Sonuç" />
        <br />
        <asp:Label ID="lblSonuc" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
