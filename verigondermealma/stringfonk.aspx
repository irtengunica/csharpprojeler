<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stringfonk.aspx.cs" Inherits="stringfonk" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextGir" runat="server" Width="345px"></asp:TextBox>
        <br />
        <asp:Button ID="ButtonOnay" runat="server" OnClick="ButtonOnay_Click" Text="Gönder" />
        <br />
        Girilen karakterlerin uzunluğu=<asp:Label ID="LabelSonuc" runat="server"></asp:Label>
    
        <br />
        Girilen karakterlerden 4. karakterden sonraya merhaba ekleme=<asp:Label ID="lblekleme" runat="server"></asp:Label>
        <br />
        stringden 5. karekterden sonraki 3 karakteri çıkarma=<asp:Label ID="lblcikarma" runat="server"></asp:Label>
        <br />
        stringin içindeki veya kelimesini sanane olarak değiştirsin:<asp:Label ID="lbldegistir" runat="server"></asp:Label>
        <br />
        stringin içinden 6. karakterden itibaren 10 karakter alma=<asp:Label ID="lblal" runat="server"></asp:Label>
        <br />
        boşlukları almama=<asp:Label ID="lbltrim" runat="server"></asp:Label>
        <br />
        başlangıçtaki boşlukları almama=<asp:Label ID="lblstarttrim" runat="server"></asp:Label>
        <br />
        sondaki&nbsp; boşlukları almama=<asp:Label ID="lblendtrim" runat="server"></asp:Label>
        <br />
        Büyük harf=<asp:Label ID="lblbuyuk" runat="server"></asp:Label>
        <br />
        kücük harf=<asp:Label ID="lblkucuk" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
