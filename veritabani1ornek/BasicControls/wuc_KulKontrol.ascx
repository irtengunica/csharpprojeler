<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuc_KulKontrol.ascx.cs" Inherits="BasicControls_wuc_KulKontrol" %>
<style type="text/css">
    .auto-style1 {
        width: 200px;
    }
    .auto-style2 {
    }
    .auto-style3 {
        width: 5px;
    }
    .auto-style4 {
        width: 104px;
    }
</style>

<asp:Panel ID="Pnlgir" runat="server" Width="200px">
    <table cellpadding="0" cellspacing="0" class="auto-style1">
        <tr>
            <td colspan="3">Kullanıcı Girişi</td>
        </tr>
        <tr>
            <td class="auto-style2">Kullanıcı Adı</td>
            <td class="auto-style3">:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtkulad" runat="server" style="margin-left: 3px" Width="77px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Şifre</td>
            <td class="auto-style3">:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtsifre" runat="server" TextMode="Password" Width="78px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="3">
                <asp:LinkButton ID="lbutonuyeol" runat="server">Üye Ol</asp:LinkButton>
                &nbsp;<asp:Label ID="lblmsj" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="3">&nbsp;<asp:CheckBox ID="Checkhatirla" runat="server" Text="Hatırla" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btngir" runat="server" OnClick="btngir_Click" Text="Giriş" Height="26px" />
                &nbsp;</td>
        </tr>
    </table>
</asp:Panel>
<asp:Panel ID="Pnluser" runat="server" Height="115px" Width="200px">
    Sayın
    <asp:Label ID="lblkulad" runat="server"></asp:Label>
    &nbsp;Sayfamıza Hoşgeldiniz.<br />
    <asp:LinkButton ID="lbutonoturumukapat" runat="server" OnClick="lbutonoturumukapat_Click">Oturumu Kapatmak İçin Tıklayınız</asp:LinkButton>
    .</asp:Panel>