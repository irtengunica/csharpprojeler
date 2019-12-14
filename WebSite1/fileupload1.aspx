<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fileupload1.aspx.cs" Inherits="fileupload1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FileUpload ID="fudosyaekle" runat="server" />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="fudosyaekle" EnableClientScript="False" ErrorMessage="Sadece Resim Dosyaları Yüklenebilir." ValidationExpression="^.+\.((jpg)|(gif)|(jpeg)|(png)|(bmp))"></asp:RegularExpressionValidator>
        <br />
        <asp:Button ID="ButtonYukle" runat="server" OnClick="ButtonYukle_Click" Text="Yükle" />
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="95px" Width="189px" />
        <br />
    
    </div>
    </form>
</body>
</html>
