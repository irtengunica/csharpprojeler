<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uyekayit.aspx.cs" Inherits="uyekayit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 277px;
        }
        .style2
        {
            width: 128px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="kayit" runat="server" Width="297px">
            <table class="style1">
                <tr>
                    <td class="style2">
                        Kullanıcı Adı</td>
                    <td>
                        <asp:TextBox ID="kuladi" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Şifre</td>
                    <td>
                        <asp:TextBox ID="sifre" runat="server" TextMode="Password" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Şifre Tekrar</td>
                    <td>
                        <asp:TextBox ID="sifretekrar" runat="server" TextMode="Password" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Adınız Soyadınız</td>
                    <td>
                        <asp:TextBox ID="adisoyadi" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Doğum Tarihi</td>
                    <td>
                        <asp:TextBox ID="dogumtarihi" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Mesleği</td>
                    <td>
                        <asp:TextBox ID="meslek" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="kaydet" runat="server" Text="Kayıt Ol" onclick="kaydet_Click" />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="sifre" ControlToValidate="sifretekrar" 
                            ErrorMessage="Şifreler Aynı Değil" Font-Size="11px"></asp:CompareValidator>
                        <br />
                        <asp:HyperLink ID="kayitgeri" runat="server" NavigateUrl="~/Default.aspx">geri</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="uyebilgi" runat="server" Height="139px" Width="296px">
            Kullanıcı adınız :
            <asp:Label ID="lbluser" runat="server" ></asp:Label>
            <br />
            Şifreniz :
            <asp:Label ID="lblpass" runat="server" ></asp:Label>
            <br />
            <asp:Label ID="lbladi" runat="server" ></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Profiline Git" Visible="False" />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
