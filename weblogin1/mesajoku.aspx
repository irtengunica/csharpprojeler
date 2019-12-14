<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mesajoku.aspx.cs" Inherits="mesajoku" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="mesajid" DataSourceID="okuiste" Height="50px" Width="382px" 
            EmptyDataText="Mesaj Başarıyla Silindi...">
            <Fields>
                <asp:TemplateField>
                    <ItemTemplate>
                        Kimden : <%# Eval("kimden") %>
                        <br />
                        <br />
                        Tarih : <%# Eval("tarih") %>
                        <br />
                        <br />
                        Mesaj : <br /><hr /><%# Eval("mesaj") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField DeleteText="Mesajı Sil" ShowDeleteButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:AccessDataSource ID="okuiste" runat="server" 
            DataFile="~/App_Data/webkent1.mdb" 
            SelectCommand="SELECT * FROM [mesajlar] WHERE ([mesajid] = ?)" 
            DeleteCommand="DELETE FROM [mesajlar] WHERE [mesajid] = ?" 
            InsertCommand="INSERT INTO [mesajlar] ([mesajid], [kimden], [adisoyadi], [mesaj], [tarih], [durum], [durumres]) VALUES (?, ?, ?, ?, ?, ?, ?)" 
            UpdateCommand="UPDATE [mesajlar] SET [kimden] = ?, [adisoyadi] = ?, [mesaj] = ?, [tarih] = ?, [durum] = ?, [durumres] = ? WHERE [mesajid] = ?">
            <SelectParameters>
                <asp:QueryStringParameter Name="mesajid" QueryStringField="mesajid" 
                    Type="Int32" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="mesajid" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="kimden" Type="String" />
                <asp:Parameter Name="adisoyadi" Type="String" />
                <asp:Parameter Name="mesaj" Type="String" />
                <asp:Parameter Name="tarih" Type="String" />
                <asp:Parameter Name="durum" Type="String" />
                <asp:Parameter Name="durumres" Type="String" />
                <asp:Parameter Name="mesajid" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="mesajid" Type="Int32" />
                <asp:Parameter Name="kimden" Type="String" />
                <asp:Parameter Name="adisoyadi" Type="String" />
                <asp:Parameter Name="mesaj" Type="String" />
                <asp:Parameter Name="tarih" Type="String" />
                <asp:Parameter Name="durum" Type="String" />
                <asp:Parameter Name="durumres" Type="String" />
            </InsertParameters>
        </asp:AccessDataSource>
    
    <asp:HyperLink ID="git" runat="server" NavigateUrl="~/mesajlarim.aspx" Text="Mesajlara Dön"></asp:HyperLink></div>
    </form>
</body>
</html>
