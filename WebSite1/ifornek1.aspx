<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ifornek1.aspx.cs" Inherits="ifornek1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Yaşınızı Girin :<asp:TextBox ID="txtYas" runat="server"></asp:TextBox>
        <asp:Button ID="BtnOnay" runat="server" OnClick="BtnOnay_Click" Text="Karşılaştır" />
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtYas" EnableClientScript="False" ErrorMessage="Boş bırakamazsınız"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtYas" EnableClientScript="False" ErrorMessage="0 ile 100  arası bir değer girin" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
    
    </div>
    </form>
</body>
</html>
