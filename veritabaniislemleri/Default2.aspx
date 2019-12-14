<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" BackColor="#FFCC99" Height="179px" Width="389px">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Value="true">Bay</asp:ListItem>
                <asp:ListItem Value="False">Bayan</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="Buttonbay" runat="server" OnClick="Buttonbay_Click" Text="baysec" />
            <asp:Button ID="Buttonbayan" runat="server" OnClick="Button2_Click" Text="bayanseç" />
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </asp:Panel>
        <br />
    
    </div>
    </form>
</body>
</html>
