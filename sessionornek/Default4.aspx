<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panelgir" runat="server" BackColor="#FFCCCC" Height="258px" Width="718px">
            Kullanıcı Adı:<asp:TextBox ID="txtkulad" runat="server"></asp:TextBox>
            <br />
            Şifre:<asp:TextBox ID="txtsifre" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btngir" runat="server" OnClick="btngir_Click" Text="Giriş" />
            <br />
            <asp:Label ID="lblmesaj" runat="server"></asp:Label>
        </asp:Panel>
        <asp:Panel ID="Panelozel" runat="server" BackColor="#CC99FF" Height="233px" Width="714px">
            Sayın
            <asp:Label ID="lblkulad" runat="server"></asp:Label>
            &nbsp;Sayfamıza Hoş geldiniz.<br /> Bu alan size özeldir.<br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Oturumu Kapat</asp:LinkButton>
            <br />
            <br />
            <br />
            <asp:LinkButton ID="lbutongec" runat="server" PostBackUrl="~/Default5.aspx">Diğer Sayfaya geçmek için tıklayınız</asp:LinkButton>
            <br />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
