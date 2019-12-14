<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Debug="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Asp.Net Çoklu Resim Yükleme</title>
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/multi.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:FileUpload ID="fileResimler" runat="server" class="multi"/>
&nbsp;<asp:Button ID="btnResimYukle" runat="server" Text="Resim(leri) Yükle" 
        onclick="btnResimYukle_Click" />
    <br />
    <asp:Label ID="lblMesaj" runat="server" Font-Size="10pt" ForeColor="Green"></asp:Label>
    </form>
</body>
</html>
