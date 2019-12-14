<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="stil.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <nav>
        
        <asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="Repeater1_ItemDataBound">
            <HeaderTemplate><ul id="menu"></HeaderTemplate>
            <ItemTemplate>
                <li><a href="<%# Eval("link") %>"><%# Eval("ad") %></a>
                    <asp:Repeater ID="Repeater2" runat="server">
                        <HeaderTemplate><ul></HeaderTemplate>
                        <ItemTemplate><li><a href="<%# Eval("link") %>"><%# Eval("ad") %></a></li></ItemTemplate>
                        <FooterTemplate></ul></FooterTemplate>
                        </asp:Repeater>
                </li>
            </ItemTemplate>
            <FooterTemplate></ul></FooterTemplate>
        </asp:Repeater> 
</nav>
    </div>
        
       
    </form>
</body>
</html>
