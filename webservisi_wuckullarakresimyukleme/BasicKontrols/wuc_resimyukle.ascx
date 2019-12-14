<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuc_resimyukle.ascx.cs" Inherits="BasicKontrols_wuc_resimyukle" %>
<script type="text/javascript">
    function dosyayukle() {
        var value = $("#FileUpload1").val();
        if (value != '') {
            $("#form1").submit();
        }
    };
</script>   
 <asp:Panel ID="Pnlfileupload" runat="server" Width="253px">
     <asp:FileUpload ID="FileUpload1" runat="server"  ClientIDMode="Static"  onchange="dosyayukle()"/>
</asp:Panel>
<asp:Panel ID="Pnlfilesonuc" runat="server" Height="125px" Width="172px">
    <asp:Image ID="Imageyuklenen" runat="server" Height="126px" Width="169px" />
    <br />
</asp:Panel>
