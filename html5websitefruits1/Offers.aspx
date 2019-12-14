<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Offers.aspx.cs" Inherits="Offers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <article>
                <header>
                    very fresh fruit
                </header>
                <table>
                    <tr><td>
                            <p>Body1 bualan article etiketi yazıları içindir.aasdas das as dasdas dasdasd as ds das das dsa dsa d asd as das d asdasd asd asd sad sa d asd as da sd sa</p>
                            <p>Body2 bualan article etiketi yazıları içindir.asdasdasfsavaaddasdasd as ds dasasda sd asd as d as das d asd as da sd asd as da sd asd a f sg fer f  rfw erd wef we </p>
                        </td>
                        <td>
                            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/fruitsrotator.xml" Height="120px" Width="120px" />
                        </td>
                    </tr>

                </table>
                 <footer>
                     <h5>
                         <a href="Default.aspx">click for more details...</a>
                     </h5>
                </footer>
            </article>
          
</asp:Content>

