<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuc_kulkontrol2.ascx.cs" Inherits="BasicControls_wuc_kulkontrol" %>
<style type="text/css">
    .auto-style2 {
        width: 300px;
    }
    .auto-style3 {
        height: 26px;
    }
</style>

<asp:Panel ID="pnlkulkontrol" runat="server" BackColor="#FFCC99" Height="163px" Width="366px">
    <table class="auto-style2">
        <tr>
            <td colspan="3">Kullanıcı Girişi</td>
        </tr>
        <tr>
            <td class="auto-style3">Kullanıcı Adı</td>
            <td class="auto-style3">:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtkulad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Şifre</td>
            <td>:</td>
            <td>
                <asp:TextBox ID="txtsifre" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmesaj" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btngir" runat="server" OnClick="btngir_Click" Text="Giriş" />
            </td>
        </tr>
    </table>
</asp:Panel>
<asp:Panel ID="pnlgiris" runat="server" BackColor="#CCFFFF" Height="134px" Width="362px">
    Sayın
    <asp:Label ID="lblkulad" runat="server" ForeColor="Red"></asp:Label>
    &nbsp;sayfamıza hoşgeldiniz.<br />
    <br />
    <asp:LinkButton ID="btncik" runat="server" OnClick="btncik_Click">Oturumu kapatmak için tıklayınız.</asp:LinkButton>
</asp:Panel>

