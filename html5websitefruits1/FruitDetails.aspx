<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FruitDetails.aspx.cs" Inherits="FruitDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 294px;
        }
        .auto-style2 {
            width: 143px;
        }
        .auto-style3 {
            width: 123px;
        }
        .auto-style4 {
            width: 120px;
        }
        .auto-style5 {
            width: 142px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <article>
                <header>
                    <asp:Label ID="txtFruitID" runat="server" Text="Label"></asp:Label></header>
                <table style="height: 203px; width: 460px">
                    <tr><td class="auto-style4">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style5">
                                        <asp:Label ID="Label1" runat="server" Text="Enerjy"></asp:Label>
                                    </td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="txtEnerjy" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style5">
                                        <asp:Label ID="Label2" runat="server" Text="Water (Per 100 gr)"></asp:Label>
                                    </td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="txtWater" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style5">
                                        <asp:Label ID="Label3" runat="server" Text="Fat (Per 100 gr)"></asp:Label>
                                    </td>
                                   
                                    <td>
                                        :</td>
                                   
                                    <td>
                                        <asp:Label ID="txtFat" runat="server"></asp:Label>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td class="auto-style5">
                                        <asp:Label ID="Label4" runat="server" Text="Protine (Per 100 gr)"></asp:Label>
                                    </td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="txtProtine" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style5">
                                        <asp:Label ID="Label5" runat="server" Text="Fiber (Per 100 gr)"></asp:Label>
                                    </td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="txtFiber" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style5">
                                        <asp:Label ID="Label6" runat="server" Text="Carbonhyydrate(Per 100 gr)"></asp:Label>
                                    </td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="txtCarp" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                </table>
                        </td>
                        <td class="auto-style3">
                                        <asp:Image ID="img" runat="server" Height="127px" Width="134px" />
            
                        </td>
                    </tr>

                </table>
                 <footer>
                     <h5>
                         Description
                     </h5>
                </footer>
       <asp:Label ID="txtDescr" runat="server" Text="Label"></asp:Label>
       <footer>
                     <h5>
                         Natriotanal Value
                     </h5>
                </footer>
       <asp:Label ID="txtNat" runat="server" Text="Label"></asp:Label>
       <footer>
                     <h5>
                         Health Benefits
                     </h5>
                </footer>
       <asp:Label ID="txtHealth" runat="server" Text="Label"></asp:Label>
       <footer>
                     <h5>
                         Shopping
                     </h5>
                </footer>
      
   
    <table align="center" style="width: 284px">
        <tr>
            <td class="auto-style2">
                                        <asp:Label ID="txtProtine0" runat="server">Price:</asp:Label>
                                    </td>
            <td>
                                        <asp:Label ID="txtPrice" runat="server"></asp:Label>&#8378;
                                    </td>
            <td rowspan="2">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="38px" ImageUrl="~/imgs/Add2Cart.jpg" Width="44px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                                        <asp:Label ID="txtProtine1" runat="server">Quantity Per Kilo:</asp:Label>
                                    </td>
            <td>
                                        <asp:TextBox ID="txtQty" runat="server" Width="43px">3</asp:TextBox>
                                    </td>
        </tr>
    </table>
   </article> 
</asp:Content>

