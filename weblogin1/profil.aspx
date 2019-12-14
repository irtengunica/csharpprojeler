<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profil.aspx.cs" Inherits="profil" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
                <asp:Label ID="isim" runat="server" ForeColor="#339933" ></asp:Label>
            <br />
        <br />
    
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="uyeid" DataSourceID="AccessDataSource1" Height="191px" 
            Width="238px">
            <Fields>
                <asp:BoundField DataField="adisoyadi" HeaderText="adisoyadi" 
                    SortExpression="adisoyadi" />
                <asp:BoundField DataField="dogumtarihi" HeaderText="dogumtarihi" 
                    SortExpression="dogumtarihi" />
                <asp:BoundField DataField="meslegi" HeaderText="meslegi" 
                    SortExpression="meslegi" />
                <asp:BoundField DataField="uyeadi" HeaderText="uyeadi" 
                    SortExpression="uyeadi" />
                <asp:HyperLinkField DataNavigateUrlFields="adisoyadi" 
                    DataNavigateUrlFormatString="mesaj.aspx?adisoyadi={0}" Text="Mesaj Gönder" />
            </Fields>
        </asp:DetailsView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/webkent1.mdb" 
            SelectCommand="SELECT * FROM [uyeler] WHERE ([adisoyadi] = ?)">
            <SelectParameters>
                <asp:QueryStringParameter Name="adisoyadi" QueryStringField="adisoyadi" 
                    Type="String" /> 
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:HyperLink ID="geri" runat="server" NavigateUrl="~/Default.aspx">Anasayfa</asp:HyperLink>
        <br />
    
    </div>
    </form>
</body>
</html>
