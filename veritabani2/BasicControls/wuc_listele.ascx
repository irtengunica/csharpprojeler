<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuc_listele.ascx.cs" Inherits="BasicControls_wuc_listele" %>
<asp:GridView ID="GridView1" runat="server">
</asp:GridView>
<p>
    &nbsp;</p>
<p>
    Kriter yaz:<asp:TextBox ID="txtaciklama" runat="server" Width="558px"></asp:TextBox>
</p>
<p>
    Sql Kodunu yaz:<asp:TextBox ID="txtsql" runat="server" Width="524px"></asp:TextBox>
</p>
<p>
    <asp:Button ID="btngetir" runat="server" OnClick="btngetir_Click" Text="Verileri getir" />
</p>
<asp:Label ID="lblaciklama" runat="server" Text="Açıklaması:"></asp:Label>
<br />
<asp:Label ID="lblsqlkodu" runat="server" Text="SqlKodu:"></asp:Label>
<asp:GridView ID="GridView2" runat="server">
</asp:GridView>

