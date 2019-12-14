<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuc_resimyuklecoklu.ascx.cs" Inherits="BasicControls_wuc_resimyukle" %>

<script type="text/javascript">
    function dosyayukle1() {
        var value = $("#FileUpload1").val();
        if (value != '') {
            $("#form1").submit();
        }
    };
   
</script>   
 <asp:Panel ID="Pnlfileupload" runat="server" Width="503px" Height="61px" Font-Bold="True" ForeColor="Red">
     <asp:FileUpload ID="FileUpload1" runat="server"  ClientIDMode="Static"  onchange="dosyayukle1()"/>

     &nbsp;<asp:Label ID="lblmsj" runat="server"></asp:Label>

</asp:Panel>
<asp:Panel ID="Pnlfilesonuc" runat="server" Height="257px" Width="517px">
   
    <asp:Image ID="Image1" runat="server" Height="126px" Width="169px" />
    <asp:Image ID="Image2" runat="server" Height="126px" Width="169px" />
    <asp:Image ID="Image3" runat="server" Height="126px" Width="169px" />
    <asp:Image ID="Image4" runat="server" Height="126px" Width="169px" />
    <asp:Image ID="Image5" runat="server" Height="126px" Width="169px" />
    <asp:Image ID="Image6" runat="server" Height="126px" Width="169px" />
    <br />
</asp:Panel>