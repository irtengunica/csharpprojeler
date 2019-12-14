<%@ Control Language="C#" AutoEventWireup="true" CodeFile="login_wuc.ascx.cs" Inherits="BasicControls_login_wuc" %>
<article>
                <header>
                    Login Members</header>
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
                                    <td colspan="3">
                                        <asp:CheckBox ID="chkRemember" runat="server" Text="Remember Me" />
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
                                        <asp:Button ID="btnLogin" runat="server" ForeColor="#B23722" Text="Login" OnClick="btnLogin_Click" />
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
                         <a href="register.aspx">Create New Account</a>
                     </h5>
                </footer>
   </article>