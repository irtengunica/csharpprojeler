<%@ Page Title="" Language="C#" MasterPageFile="~/sitedeneme.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register src="BasicControls/wuc_default.ascx" tagname="wuc_default" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:wuc_default ID="wuc_default1" runat="server" />
</asp:Content>

