<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insert_product.aspx.cs" Inherits="insert_product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="./main.css" />

</head>
<body>
    <form id="form1" runat="server" style="padding: 40px">
        <h1 class="headers" style="text-align: center">Create Product</h1>
        <div class="flex-center" style="flex-direction: column">

         <div>
            <asp:Label runat="server" Text="Emer" CssClass="mr-1"></asp:Label>
            <asp:TextBox ID="emer" runat="server"></asp:TextBox>
        </div>
        <div class="mt-1">
            <asp:Label runat="server" Text="Cmimi" CssClass="mr-1"></asp:Label>
            <asp:TextBox ID="cmimi" runat="server"></asp:TextBox>
        </div>
        <div class="mt-1">
            <asp:Label runat="server" Text="Sasia" CssClass="mr-1"></asp:Label>
            <asp:TextBox ID="sasia" runat="server"></asp:TextBox>
        </div>
        </div>

        <div class="mt-2 flex-center">
            <asp:Button ID="insert" CssClass="mr-1" runat="server" Text="Krijo" OnClick="insert_Click" />
        <asp:Button ID="backtoproduct" runat="server" Text="Go Back" OnClick="backtoproduct_Click" />

        </div>
    </form>
</body>
</html>
