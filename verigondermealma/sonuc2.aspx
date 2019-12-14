<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sonuc2.aspx.cs" Inherits="sonuc2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Adı:<asp:TextBox ID="Txtadi" runat="server"></asp:TextBox>
        <br />
        Soyadı:<asp:TextBox ID="Txtsoyadi" runat="server"></asp:TextBox>
        <br />
        Adresi:<asp:TextBox ID="Txtadres" runat="server"></asp:TextBox>
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/verigonder2.aspx">Geri Dön</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
