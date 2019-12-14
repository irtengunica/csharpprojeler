<%@ Page Title="" Language="C#" MasterPageFile="~/sitedeneme.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<%@ Register src="BasicControls/wuc_iletisim.ascx" tagname="wuc_iletisim" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:wuc_iletisim ID="wuc_iletisim1" runat="server" />
</asp:Content>

