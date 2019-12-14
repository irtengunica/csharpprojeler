<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fordongu12.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Karekter1 yaz:<asp:TextBox ID="TxtKarekter1" runat="server"></asp:TextBox>
        <br />
    
        Karekter 2yaz:<asp:TextBox ID="TxtKarekter2" runat="server"></asp:TextBox>
        <br />
        Satır Sayısı:<asp:TextBox ID="txtsatirsayisi" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnEkranayaz" runat="server" OnClick="btnEkranayaz_Click" Text="Ekrana Yaz" />
        <br />
    
    </div>
    </form>
</body>
</html>
