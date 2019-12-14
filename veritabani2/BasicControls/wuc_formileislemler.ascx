<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuc_formileislemler.ascx.cs" Inherits="BasicControls_wuc_formileislemler" %>
<asp:Panel ID="Paneluyeol" runat="server" Height="388px" Width="1032px">
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
            <td class="auto-style2">Şifreniz</td>
            <td class="auto-style2">:</td>
            <td class="auto-style2">
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
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Textmail" EnableClientScript="False" ErrorMessage="Bu alan Zorunludur."></asp:RequiredFieldValidator>
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
                <asp:TextBox ID="Textkimlikno" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Textkimlikno" EnableClientScript="False" ErrorMessage="Bu alan Zorunludur."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Cinsiyetiniz</td>
            <td>:</td>
            <td>
                <asp:RadioButtonList ID="Radiocinsiyet" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="1">Bay</asp:ListItem>
                    <asp:ListItem Value="0">Bayan</asp:ListItem>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Buttonuyeol" runat="server" OnClick="Buttonuyeol_Click" Text="Üye Ol" />
            </td>
        </tr>
    </table>
</asp:Panel>
<asp:GridView ID="GridViewlistele" runat="server">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server">Sil</asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

