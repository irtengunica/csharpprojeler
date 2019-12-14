<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mesaj.aspx.cs" Inherits="mesaj" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="isim" runat="server" ForeColor="#339933" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;Kime :
                <asp:Label ID="kime" runat="server"></asp:Label>
                <asp:Label ID="kimden" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Tarih :
                <asp:Label ID="tarih" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Mesaj"></asp:Label>
                :
                <asp:TextBox ID="pmesaj" runat="server" Height="114px" TextMode="MultiLine" 
                    Width="230px"></asp:TextBox>
                <br />
          <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Gönder" />
                <asp:Label ID="onay" runat="server" ></asp:Label>
                <br />
        <asp:HyperLink ID="geri" runat="server" NavigateUrl="~/Default.aspx">Anasayfa</asp:HyperLink>
                <br />
                <br />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
