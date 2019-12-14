<%@ Page Language="C#" AutoEventWireup="true" CodeFile="resimyukle.aspx.cs" Inherits="resimyukle" %>

<%@ Register Src="~/BasicKontrols/wuc_resimyukle.ascx" TagPrefix="uc1" TagName="wuc_resimyukle" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.1.3.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:wuc_resimyukle runat="server" ID="wuc_resimyukle" />
    </div>
    </form>
</body>
</html>
