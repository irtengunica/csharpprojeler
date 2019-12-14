<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panelgiris" runat="server" Height="290px" Width="696px">
            Kullanıcı Girişi Yapınız.<br /> Kullanıcı Adı:<asp:TextBox ID="TextBoxkulad" runat="server"></asp:TextBox>
            <br />
            Şifre:<asp:TextBox ID="TextBoxsifre" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Buttonac" runat="server" OnClick="Buttonac_Click" Text="Oturumu Aç" />
        </asp:Panel>
        <asp:Panel ID="Panelozel" runat="server" Height="214px" Visible="False" Width="694px">
            <asp:Label ID="Labelkarsilama" runat="server"></asp:Label>
            <br />
            Bu alan Özel alandır Sadece Doğru girişi yapanlar için gözükmektedir.<br />
            <asp:Button ID="Buttonkapat" runat="server" OnClick="Buttonkapat_Click" Text="Oturumu Kapat" />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
