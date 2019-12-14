<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default"  Debug="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Kent Üyelik Paneli, Üyeler Arası Mesajlaşma</title>
    <style type="text/css">
        .genel
        {
            height: 637px;
            margin-bottom: 236px;
        }
        .panel
        {
            width: 696px;
            height: 620px;
        }
        .style3
        {
            width: 92%;
        }
        .style4
        {
            width: 300px;
        }
        .style5
        {
            width: 450px;
            height: 603px;
            vertical-align:top;
        }
        .style6
        {
            width: 167px;
            vertical-align:top;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="genel">
        <table cellpadding="2" class="panel">
            <tr>
                <td style="vertical-align:top;" class="style4">
                    <asp:Panel ID="panel1" runat="server" Width="493px">
                        <table class="style3">
                            <tr>
                                <td>
                                    Kullanıcı Adı
                                </td>
                                <td>
                                    <asp:TextBox ID="kuladi" runat="server"></asp:TextBox>
                                </td>
                                <td rowspan="3">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        DataKeyNames="uyeid" DataSourceID="AccessDataSource2" Width="146px">
                                        <Columns>
                                            <asp:BoundField DataField="adisoyadi" HeaderText="adisoyadi" 
                                                SortExpression="adisoyadi" />
                                        </Columns>
                                    </asp:GridView>
                                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                                        DataFile="~/App_Data/webkent1.mdb" SelectCommand="SELECT * FROM [uyeler]">
                                    </asp:AccessDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Şifre</td>
                                <td>
                                    <asp:TextBox ID="kulsifre" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Button ID="giris" runat="server" Text="Giriş" onclick="giris_Click" />
                                    <br />
                                    <asp:HyperLink ID="kayit" runat="server" NavigateUrl="uyekayit.aspx">Yeni Üye Kaydı</asp:HyperLink>
                                    <br />
                                    <asp:Label ID="hata" runat="server" ></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <asp:Panel ID="panel2" runat="server" Height="444px" Width="581px">
                        <table class="style5">
                            <tr>
                                <td class="style6">
                                    <br />
                                    <asp:DataList ID="DataList1" runat="server" DataSourceID="AccessDataSource1">
                                        <ItemTemplate>
                                            Profil Bilgileri<br />
                                            <asp:Label ID="adiLabel" runat="server" ForeColor="#0033CC" 
                                                Text='<%# Eval("adisoyadi") %>' />
                                            &nbsp;&nbsp;<br />
                                            <br />
                                            Doğum Tarihiniz<br />
                                            <asp:Label ID="dogumtarihiLabel" runat="server" ForeColor="#FF6600" 
                                                Text='<%# Eval("dogumtarihi") %>' />
                                            <br />
                                            <br />
                                            Mesleğiniz<br />
                                            <asp:Label ID="meslegiLabel" runat="server" ForeColor="#FF6600" 
                                                Text='<%# Eval("meslegi") %>' />
                                            <br />
                                            
                                            <br />
                                        </ItemTemplate>
                                    </asp:DataList>
                                </td>
                                <td style="vertical-align:top;">
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                        DataKeyNames="uyeid" DataSourceID="AccessDataSource2" Width="175px">
                                        <Columns>
                                            <asp:BoundField DataField="adisoyadi" HeaderText="Üyeler" 
                                                SortExpression="adisoyadi" />
                                            <asp:HyperLinkField DataNavigateUrlFields="adisoyadi" 
                                                DataNavigateUrlFormatString="profil.aspx?adisoyadi={0}" Text="Profili" />
                                        </Columns>
                                    </asp:GridView>
                                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/mesajlarim.aspx">Mesajlarım</asp:LinkButton>
                                            <asp:Label ID="Label1" runat="server"></asp:Label>
                                    <br />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/webkent1.mdb" 
    SelectCommand="SELECT * FROM [uyeler] WHERE ([adisoyadi] = ?)">
                            <SelectParameters>
                                <asp:SessionParameter Name="adisoyadi" SessionField="adisoyadi" Type="String" />
                            </SelectParameters>
                        </asp:AccessDataSource>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
