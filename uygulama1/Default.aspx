<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" Width="55px" />
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="326px" ImageUrl="~/20141001_142859.jpg" Width="589px" />
        <br />
        <br />
        <asp:ImageButton ID="ImageButton2" runat="server" Height="100px" ImageUrl="~/IMG_20141211_082856.jpg" />
    
    </div>
    </form>
</body>
</html>
