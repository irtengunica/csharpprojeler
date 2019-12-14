<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wucmaskeleme.ascx.cs" Inherits="wucmaskeleme" %>
<script src="Scripts/jquery-2.1.3.min.js"></script>
<script src="Scripts/jquery.maskedinput.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
 
            //Input Mask for landline phone number
            $("#txtPhoneNumber11").mask("(999) 9999-9999");
 
            //Input Mask for mobile phone number
            $("#txtMobileNumber").mask("(999) 999-9999");
 
            //Input Mask for date of birth or date in general
            $("#txtDOB").mask("99/99/9999");
 
        });
    </script>
Phone Number: <asp:TextBox ID="txtPhoneNumber11" runat="server" ClientIDMode="Static"></asp:TextBox>   (123) 1234-5678<br />
    Mobile Number: <asp:TextBox ID="txtMobileNumber" runat="server" ClientIDMode="Static"></asp:TextBox>  (012) 123-4567<br />
    Date of Birth: <asp:TextBox ID="txtDOB" runat="server" ClientIDMode="Static"></asp:TextBox>  22/08/1986