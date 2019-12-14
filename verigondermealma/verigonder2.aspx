<%@ Page Language="C#" AutoEventWireup="true" CodeFile="verigonder2.aspx.cs" Inherits="verigonder2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 300px;
        }
        .auto-style2 {
            width: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">No</td>
                <td>Adı</td>
                <td>Soyadı</td>
                <td>İli</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">1</asp:LinkButton>
                </td>
                <td>Ali</td>
                <td>Bilir</td>
                <td>Zonguldak</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">2</asp:LinkButton>
                </td>
                <td>Şaban</td>
                <td>Görür</td>
                <td>İzmir</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">3</asp:LinkButton>
                </td>
                <td>Ayşe</td>
                <td>Tığlı</td>
                <td>Manisa</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">4</asp:LinkButton>
                </td>
                <td>Arzu</td>
                <td>Kıymet</td>
                <td>Bolu</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
