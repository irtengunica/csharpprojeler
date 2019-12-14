<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        burası anasayfa<br />
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="XX-Large" PostBackUrl="~/Default2.aspx">Sonraki Sayfa</asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="XX-Large" OnClick="LinkButton2_Click">Oturumu Kapat</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
