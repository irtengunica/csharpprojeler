<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuc_ShowAllfruits.ascx.cs" Inherits="UserServices_wuc_ShowAllfruits" %>
<style type="text/css">
    .auto-style3 {
        height: 149px;
    }
</style>
<asp:DataList ID="DataList1" runat="server" DataKeyField="FruitID" DataSourceID="SqlDataSource1" RepeatColumns="2">
    <ItemTemplate>
        <article>
            <header>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text='<%# Eval("FruitID") %>'></asp:Label>
            </header>
            <table style="height: 156px; width: 195px">
                <tr>
                    <td style="text-align: center" class="auto-style3">
                        <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl='<%# "..\\imgs\\"+Eval("FruitID")+"2.jpg" %>' Width="120px" AlternateText='<%# Eval("NatritionalValue") %>' />
                    </td>
                </tr>
                <tr><td style="text-align: center">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# "("+Eval("Price")+"&#8378;)" %>'></asp:Label>
                    </td></tr>
            </table>
            <footer>
                <h5><a href="FruitDetails.aspx?id=<%# Eval("FruitID") %>">More Details...</a> </h5>
            </footer>
        </article>
        <br />
        <br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FruitsConStr %>" SelectCommand="SELECT * FROM [Fruit]"></asp:SqlDataSource>
