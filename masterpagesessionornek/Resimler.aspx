<%@ Page Title="" Language="C#" MasterPageFile="~/sitedeneme.master" AutoEventWireup="true" CodeFile="Resimler.aspx.cs" Inherits="Resimler" %>

<%@ Register src="BasicControls/wuc_resimler.ascx" tagname="wuc_resimler" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:wuc_resimler ID="wuc_resimler1" runat="server" />
</asp:Content>

