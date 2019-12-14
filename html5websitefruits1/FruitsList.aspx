<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FruitsList.aspx.cs" Inherits="FruitsList" %>

<%@ Register src="UserServices/wuc_ShowAllfruits.ascx" tagname="wuc_ShowAllfruits" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:wuc_ShowAllfruits ID="wuc_ShowAllfruits1" runat="server" />
</asp:Content>

