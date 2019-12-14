

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type = "text/javascript">
    <!--
    var isShift = false;
    var seperator = "/";
    function DateFormat(txt, keyCode) {
        if (keyCode == 16)
            isShift = true;
        //Validate that its Numeric
        if (((keyCode >= 48 && keyCode <= 57) || keyCode == 8 || keyCode <= 37 || keyCode <= 39 || (keyCode >= 96 && keyCode <= 105)) && isShift == false) {
            if ((txt.value.length == 2 || txt.value.length == 5) && keyCode != 8) {
                txt.value += seperator;
            }
            return true;
        }
        else {
            return false;
        }
    }
    function ValidateDate(txt, keyCode) {
        if (keyCode == 16)
            isShift = false;
        var val = txt.value;
        var lblmesg = document.getElementById("<%=lblMesg.ClientID%>");
            if (val.length == 10) {
                var splits = val.split("/");
                var dt = new Date(splits[1] + "/" + splits[0] + "/" + splits[2]);

                //Validation for Dates
                if (dt.getDate() == splits[0] && dt.getMonth() + 1 == splits[1] && dt.getFullYear() == splits[2]) {
                    lblmesg.style.color = "green";
                    lblmesg.innerHTML = "Geçerli Tarih";
                }
                else {
                    lblmesg.style.color = "red";
                    lblmesg.innerHTML = "Geçersiz Tarih";
                    return;
                }

              
            }
            else if (val.length < 10) {
                lblmesg.style.color = "blue";
                lblmesg.innerHTML = "Gün/Ay/Yıl Formatında Giriniz.";
            }
        }

        function RangeValidation(dt) {
            var startrange = new Date(Date.parse("01/01/1900"));
            var endrange = new Date(Date.parse("12/31/2099"));
            var lblmesg = document.getElementById("<%=lblMesg.ClientID%>");
            if (dt < startrange || dt > endrange) {
                lblmesg.style.color = "red";
                lblmesg.innerHTML = "01/01/1900 ile 31/12/2099 tarihleri arasında giriş yapılabilir.";
            }
        }

        
    //-->
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <asp:Label ID="Label1" runat="server" Font-Names = "Arial" Text ="Date Validations"></asp:Label>
        <asp:TextBox ID="txtValidate" runat="server" MaxLength = "10" onkeyup = "ValidateDate(this, event.keyCode)" onkeydown = "return DateFormat(this, event.keyCode)"></asp:TextBox>
        <br />
 
        <asp:Label ID="lblMesg" runat="server" ForeColor = "Blue" Font-Names = "Arial" Text ="Gün/Ay/Yıl Formatında Giriniz."></asp:Label>
    
    </div>
    </form>
</body>
</html>
