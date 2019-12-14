<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uyeol.aspx.cs" Inherits="uyeol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Paneluyeol" runat="server" Height="464px" Width="1032px">
            <table class="auto-style1">
                <tr>
                    <td colspan="3">Üy Olmak İçin Aşağıdaki Formu Doldurunuz ve Butona Tıklayınız.</td>
                </tr>
                <tr>
                    <td>Kullanıcı Adınız</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="Textkulad" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Textkulad" EnableClientScript="False" ErrorMessage="Bu alan Zorunludur."></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Şifreniz</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="Textsifre" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Textsifre" EnableClientScript="False" ErrorMessage="Bu alan Zorunludur."></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Tekrar Şifreniz</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="Texttsifre" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Textsifre" ControlToValidate="Texttsifre" EnableClientScript="False" ErrorMessage="Üstteki alanla aynı şifreyi giriniz."></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>Adınız</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="Textad" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Textad" EnableClientScript="False" ErrorMessage="Bu alan Zorunludur."></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Soyadınız</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="Textsoyad" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Textsoyad" EnableClientScript="False" ErrorMessage="Bu alan Zorunludur."></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Mail Adresiniz</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="Textmail" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Tekrar Mail Adresiniz</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="Texttmail" runat="server" TextMode="Email"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="Textmail" ControlToValidate="Texttmail" EnableClientScript="False" ErrorMessage="Üstteki alanla aynı mail giriniz."></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>TC Kimlik Numaranız</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="Textkimlikno" runat="server" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Textkimlikno" EnableClientScript="False" ErrorMessage="Bu alan Zorunludur."></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Cinsiyetiniz</td>
                    <td>:</td>
                    <td>
                        <asp:RadioButtonList ID="Radiocinsiyet" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="true">Bay</asp:ListItem>
                            <asp:ListItem Value="false">Bayan</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>Yaşınız</td>
                    <td>:</td>
                    <td>
                        <asp:DropDownList ID="Dropyas" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Resim Ekle</td>
                    <td>:</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Buttonuyeol" runat="server" OnClick="Buttonuyeol_Click" Text="Üye Ol" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    
    </div>
        <asp:Image ID="Image1" runat="server" Height="44px" Width="206px" />
    </form>
</body>
</html>
