<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yaziliort.aspx.cs" Inherits="yaziliort" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        1. yazılı:<asp:TextBox ID="txtYaz1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtYaz1" EnableClientScript="False" ErrorMessage="Bu Alan Boş olamaz" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtYaz1" EnableClientScript="False" ErrorMessage="0-100 arası değer girin" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
        <br />
        2. yazılı:<asp:TextBox ID="txtYaz2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtYaz2" EnableClientScript="False" ErrorMessage="Bu Alan Boş olamaz" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtYaz2" EnableClientScript="False" ErrorMessage="0-100 arası değer girin" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
        <br />
        3. yazılı:<asp:TextBox ID="txtYaz3" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtYaz3" EnableClientScript="False" ErrorMessage="Bu Alan Boş olamaz" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtYaz3" EnableClientScript="False" ErrorMessage="0-100 arası değer girin" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
        <br />
        1. Sözlü:<asp:TextBox ID="txtYaz4" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtYaz4" EnableClientScript="False" ErrorMessage="Bu Alan Boş olamaz" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="txtYaz4" EnableClientScript="False" ErrorMessage="0-100 arası değer girin" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
        <br />
        1. Sözlü:<asp:TextBox ID="txtYaz5" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtYaz5" EnableClientScript="False" ErrorMessage="Bu Alan Boş olamaz" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RangeValidator ID="RangeValidator5" runat="server" ControlToValidate="txtYaz5" EnableClientScript="False" ErrorMessage="0-100 arası değer girin" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
        <br />
        <asp:Button ID="btnSonuc" runat="server" OnClick="btnSonuc_Click" Text="Sonuc" />
        <asp:Label ID="lblSonuc" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
