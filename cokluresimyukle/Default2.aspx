<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>



<%@ Register src="BasicControls/wuc_resimyukle.ascx" tagname="wuc_resimyukle" tagprefix="uc1" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.1.3.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:wuc_resimyukle ID="wuc_resimyukle1" runat="server" />

    
    </div>
    </form>
</body>
</html>
