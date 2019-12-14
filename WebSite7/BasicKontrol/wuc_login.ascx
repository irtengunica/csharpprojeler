<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuc_login.ascx.cs" Inherits="BasicKontrol_wuc_login" %>
<p>
    Kullanıcı adı:<asp:TextBox ID="txtkulad" runat="server"></asp:TextBox>
</p>
<p>
    Şifre:<asp:TextBox ID="txtsifre" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="lblmesaj" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btngir" runat="server" OnClick="btngir_Click" Text="Giriş" />
</p>

