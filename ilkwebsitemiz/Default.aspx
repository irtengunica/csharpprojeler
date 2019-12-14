<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="mesaj1" runat="server" Font-Bold="True" Font-Size="20pt" Font-Underline="True" ForeColor="#FF33CC" Text="merhaba lütfen butona tıklayınız"></asp:Label>
        <br />
        <br />
        <asp:Button ID="tiklabutonu" runat="server" OnClick="tiklabutonu_Click" Text="Lütfen Basınız." />
        <br />
    
    </div>
    </form>
</body>
</html>
