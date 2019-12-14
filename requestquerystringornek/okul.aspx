<%@ Page Language="VB" AutoEventWireup="false" CodeFile="okul.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        okul resimleri<br />
        <asp:Menu ID="Menu1" runat="server">
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
        </asp:Menu>
    
    </div>
    </form>
</body>
</html>
