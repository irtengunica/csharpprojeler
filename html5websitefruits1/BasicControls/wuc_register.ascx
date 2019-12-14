<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuc_register.ascx.cs" Inherits="BasicControls_wuc_register" %>
<article>
                <header>
                    Sign Up for you new Free Account</header>
                <table>
                    <tr><td>
                            <table class="auto-style1">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                                    </td>
                                    <td>:</td>
                                    <td>
                                        <asp:TextBox ID="Txtuser" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                                    </td>
                                    <td>:</td>
                                    <td>
                                        <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                                    </td>
                                   
                                    <td>
                                        :</td>
                                   
                                    <td>
                                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="lblMsg" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:Button ID="btnLogin" runat="server" ForeColor="#B23722" Text="Sign Up" OnClick="btnLogin_Click" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                                        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/fruitsrotator.xml" Height="100px" Width="100px" />
            
                        </td>
                    </tr>

                </table>
                 <footer>
                     <h5>
                         <a href="login.aspx">exist user</a>
                     </h5>
                </footer>
   </article>