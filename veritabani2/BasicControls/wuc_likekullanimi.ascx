<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuc_likekullanimi.ascx.cs" Inherits="BasicControls_wuc_likekullanimi" %>
    <div>
    
        Kulad:<asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridViewlistele" runat="server">
        </asp:GridView>
    
    </div>
    
