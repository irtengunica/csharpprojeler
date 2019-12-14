<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mesajlarim.aspx.cs" Inherits="mesajlarım" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            margin-right: 2px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>            
                <asp:Label ID="isim" runat="server" ForeColor="#339933" ></asp:Label>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" CssClass="style1" DataKeyNames="mesajid" 
            EnableModelValidation="True"  OnRowDataBound="renkler"
            DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None" 
            Height="129px" Width="432px">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" 
                            ImageUrl='<%# Eval("durumres") %>' NavigateUrl='<%# Eval("mesajid", "mesajoku.aspx?mesajid={0}") %>' ></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="tarih" HeaderText="tarih" SortExpression="tarih" />
                        <asp:BoundField DataField="kimden" HeaderText="kimden" 
                    SortExpression="kimden" />
                        <asp:BoundField DataField="durum" ShowHeader="False" SortExpression="durum">
                        <ItemStyle BorderStyle="None" Font-Size="0pt" Width="0px" />
                        </asp:BoundField>
                        <asp:CommandField DeleteText="Sil" ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/App_Data/webkent1.mdb" 
                    SelectCommand="SELECT * FROM [mesajlar] WHERE ([adisoyadi] = ?)" 
                    DeleteCommand="DELETE FROM [mesajlar] WHERE [mesajid] = ?" 
                    InsertCommand="INSERT INTO [mesajlar] ([mesajid], [kimden], [adisoyadi], [mesaj], [tarih], [durum], [durumres]) VALUES (?, ?, ?, ?, ?, ?, ?)" 
                    UpdateCommand="UPDATE [mesajlar] SET [kimden] = ?, [adisoyadi] = ?, [mesaj] = ?, [tarih] = ?, [durum] = ?, [durumres] = ? WHERE [mesajid] = ?">
                    <SelectParameters>
                        <asp:SessionParameter Name="adisoyadi" SessionField="adisoyadi" Type="String" />
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
                <asp:HyperLink ID="geri" runat="server" NavigateUrl="~/Default.aspx">Anasayfa</asp:HyperLink>
                <br />
        <br />
    
    </div>
    </form>
</body>
</html>
