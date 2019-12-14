<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register src="BasicKontrol/wuc_login.ascx" tagname="wuc_login" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:wuc_login ID="wuc_login1" runat="server" />
    
    </div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
        Kullanıcı Adı:<asp:TextBox ID="txtkulad" runat="server"></asp:TextBox>
        <br />
        Şifre<asp:TextBox ID="txtsifre" runat="server"></asp:TextBox>
        <br />
        Email<asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnekle" runat="server" OnClick="btnekle_Click" Text="ekle" />
        <asp:Label ID="lblmesaj" runat="server"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <asp:Button ID="btnsil" runat="server" OnClick="btnsil_Click" Text="sil" />
    </form>
</body>
</html>
