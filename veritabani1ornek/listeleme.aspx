<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listeleme.aspx.cs" Inherits="listeleme" %>

<%@ Register src="BasicControls/wuc_liste.ascx" tagname="wuc_liste" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:wuc_liste ID="wuc_liste1" runat="server" />
    
    </div>
    </form>
</body>
</html>
