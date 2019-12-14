<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cocuksayisi.aspx.cs" Inherits="cocuksayisi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Cinsiyetiniz:<asp:DropDownList ID="DrlistCinsiyet" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DrlistCinsiyet_SelectedIndexChanged">
            <asp:ListItem>Bay</asp:ListItem>
            <asp:ListItem>Bayan</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Panel ID="PanelBay" runat="server" BackColor="#0099FF" Height="185px" Visible="False">
            Bu alan Baylara Özeldir.<br />
        </asp:Panel>
        <asp:Panel ID="PanelBayan" runat="server" BackColor="#FF66CC" Height="206px" Visible="False">
            Bu alan BAYANLARA özeldir.</asp:Panel>
    
    </div>
        <p>
            Çocuk Sayısı:<asp:DropDownList ID="DrlistCocuksayisi" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DrlistCocuksayisi1_SelectedIndexChanged">
                <asp:ListItem>Çocuk Sayısı Seçiniz.</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
            </asp:DropDownList>
        </p>
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            1.Çoçuk Yaşı<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>0</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
            </asp:DropDownList>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Visible="False">
            2.Çoçuk Yaşı<asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>0</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
            </asp:DropDownList>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Visible="False">
            3.Çoçuk Yaşı<asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>0</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
            </asp:DropDownList>
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" Visible="False">
            4.Çoçuk Yaşı<asp:DropDownList ID="DropDownList4" runat="server">
                <asp:ListItem>0</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
            </asp:DropDownList>
        </asp:Panel>
        <p>
        </p>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
