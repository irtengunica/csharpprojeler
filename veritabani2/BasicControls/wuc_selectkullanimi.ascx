<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuc_selectkullanimi.ascx.cs" Inherits="BasicControls_wuc_selectkullanimi" %>
    <div>
    
        Silme Değiştirme ve Yeni kayıt için Sql Cümlesini yazınız:<br />
        <asp:TextBox ID="txteklesildegis" runat="server" Font-Size="Larger" Height="66px" TextMode="MultiLine" Width="913px"></asp:TextBox>
        <br />
        <asp:Button ID="BTNislem" runat="server" OnClick="BTNislem_Click" Text="Ekle,Sil ve Değiştir İşlemini YAP" />
        <br />
    
        Listeleme İçin İstediğiniz Sql Cümlesini yazınız:<br />
        <asp:TextBox ID="TextBoxsqlcumle" runat="server" Font-Size="Larger" Height="66px" TextMode="MultiLine" Width="913px"></asp:TextBox>
        <br />
        <asp:Button ID="Buttonsqlcalistir" runat="server" OnClick="Buttonsqlcalistir_Click" Text="Çalıştır" />
        <br />
        <br />
        <asp:GridView ID="GridViewlistele" runat="server">
        </asp:GridView>
    
    </div>
    
