<%@ Page Title="" Language="C#" MasterPageFile="~/sitedeneme.master" AutoEventWireup="true" CodeFile="Muzikler.aspx.cs" Inherits="Muzikler" %>

<%@ Register src="BasicControls/wuc_muzikler.ascx" tagname="wuc_muzikler" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:wuc_muzikler ID="wuc_muzikler1" runat="server" />
</asp:Content>

