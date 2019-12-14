<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fordongusu10.aspx.cs" Inherits="fordongusu3" %>

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
        <asp:Button ID="btntoplam" runat="server" OnClick="btnBas_Click" Text="57ye bölünenlerin toplamı" />
    
        <asp:Button ID="btnbolsay" runat="server" OnClick="btnbolsay_Click" Text="57ye bölünenlerin sayısı " />
    
        <asp:Button ID="btnbolyaz" runat="server" OnClick="btnbolyaz_Click" Text="57ye bölünenlerin ekrana yaz" />
    
        <asp:Button ID="btnbolyaz0" runat="server" OnClick="btnbolyaz0_Click" Text="57ye bölünen 4.  sayıyı bul" />
    
        <br />
        <asp:Button ID="btn12bolcarp" runat="server" OnClick="btn12bolcarp_Click" Text="12 ye bölünenlerin çarpımı" />
        <asp:Button ID="btnkareleritop" runat="server" OnClick="btnkareleritop_Click" Text="Kareleri toplamı" />
        <asp:Button ID="btn14bol1724top" runat="server" OnClick="btn14bol1724top_Click" Text="14 e bölünen 17 ve 24.saytıların toplamı" />
        <asp:Button ID="btn9ve15bolekranayaz" runat="server" OnClick="btn9ve15bolekranayaz_Click" Text="9a ve 15 e bölün sayıları ekrana yaz" />
    
    </div>
    </form>
</body>
</html>
