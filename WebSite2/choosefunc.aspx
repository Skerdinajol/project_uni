<%@ Page Language="C#" AutoEventWireup="true" CodeFile="choosefunc.aspx.cs" Inherits="choosefunc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="./main.css" />

</head>
<body class="action-bkg">
        <h1 class="headers" style="text-align: center; margin-top: 50px; color: white">Bar Kafe Management System</h1>

    <form id="form1" runat="server" class="actions-container">
        <div class="action-item">
            <div class="shto-punonjes"></div>
            <asp:Button ID="shto_punonjes" runat="server" Text="Shto/Hiq Punonjes" OnClick="Shto_punonjes_Click" />
        </div>
        <div class="action-item">
            <div class=" shto-produkt"></div>
            <asp:Button ID="shto_mall" runat="server" Text="Shto Produkte" OnClick="Shto_mall_Click" />
        </div>
         <div class="action-item">
            <div class="shto-user"></div>
            <asp:Button ID="krijo_user" runat="server" Text="Krijo User" OnClick="krijo_user_Click" />
        </div>
         <div class="action-item">
            <div class="logout"></div>
            <asp:Button ID="Button1" runat="server" Text="Log Out" OnClick="backtologin_Click" />
        </div>
    </form>

</body>
</html>
