<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 306px;
            height: 117px;
        }
        .auto-style2 {
            width: 120px;
        }
        .auto-style3 {
            width: 120px;
            height: 25px;
        }
        .auto-style4 {
            height: 25px;
        }
        .auto-style5 {
            height: 25px;
            width: 11px;
        }
        .auto-style6 {
            width: 11px;
        }
        .auto-style7 {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panelgiris" runat="server" Height="152px" Width="409px">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7" colspan="3">Kullanıcı Girişi</td>
                </tr>
                <tr>
                    <td class="auto-style3">Kullanıcı Adı</td>
                    <td class="auto-style5">:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="Textkuladgir" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Şifre</td>
                    <td class="auto-style6">:</td>
                    <td>
                        <asp:TextBox ID="Textsifregir" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:LinkButton ID="Linkuyeol" runat="server">Üye OL</asp:LinkButton>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        <asp:Button ID="Buttonkulgir" runat="server" Height="26px" OnClick="Buttonkulgir_Click" Text="Giriş" Width="41px" />
                        &nbsp;<br />
                        <asp:Label ID="Labelgirmesaj" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panelyetkili" runat="server" Height="376px" Width="644px">
            Hoşgeldiniz Sayın
            <asp:Label ID="Labelyetkili" runat="server" ForeColor="Red"></asp:Label>
            ;<br />
            <asp:LinkButton ID="Linkoturumukapat" runat="server" OnClick="Linkoturumukapat_Click">Oturumu Kapatmak İçin tıklayınız.</asp:LinkButton>
            <br />
            <asp:Image ID="Imagekulresim" runat="server" Height="140px" Width="138px" />
            <br />
            Listede kullanıcı adına göre arama:<asp:TextBox ID="Textkuladara" runat="server" AutoPostBack="True" OnTextChanged="Textkuladara_TextChanged"></asp:TextBox>
            <br />
            <asp:GridView ID="Gridlistele" runat="server">
            </asp:GridView>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
