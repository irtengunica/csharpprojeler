<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Bu sayfa ana sayfamızdır.<br />
        <asp:Menu ID="Menu1" runat="server" Font-Size="15pt" Font-Strikeout="False" Font-Underline="False" ForeColor="#FF0066" Orientation="Horizontal">
            <Items>
                <asp:MenuItem Text="Anasayfa" Value="Anasayfa" NavigateUrl="~/Default.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Resimler" Value="Resimler" NavigateUrl="~/Resimler.aspx">
                    <asp:MenuItem Text="Manzara" Value="Manzara" NavigateUrl="~/manzara.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Okul" Value="Okul" NavigateUrl="~/okul.aspx"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Videolar" Value="Videolar" NavigateUrl="~/videolar.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Müzikler" Value="Müzikler" NavigateUrl="~/muzikler.aspx">
                    <asp:MenuItem Text="Yerli" Value="Yerli" NavigateUrl="~/yerli.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Yabancı" Value="Yabancı" NavigateUrl="~/yabanci.aspx"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="İletişim" Value="İletişim" NavigateUrl="~/iletisim.aspx"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#6666FF" BorderColor="Lime" BorderStyle="Dotted" ForeColor="Blue" />
            <StaticMenuItemStyle BackColor="#9933FF" ForeColor="White" />
        </asp:Menu>
        <br />
    
    </div>
    </form>
</body>
</html>
