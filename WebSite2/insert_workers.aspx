<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insert_workers.aspx.cs" Inherits="insert_workers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="./main.css" />

</head>
<body>
    <form id="form1" runat="server" style="padding: 40px">
        <h1 class="headers" style="text-align: center">Insert Worker</h1>
        <div class="flex-center" style="flex-direction: column">

        <div>
            <asp:Label runat="server" Text="Emer" CssClass="mr-1"></asp:Label>
            <asp:TextBox ID="emer" runat="server"></asp:TextBox>
        </div>
        <div class="mt-1">
            <asp:Label runat="server" Text="Mbiemer" CssClass="mr-1"></asp:Label>
            <asp:TextBox ID="mbiemer" runat="server"></asp:TextBox>
        </div>
        <div class="mt-1">
            <asp:Label runat="server" Text="Datelindja" CssClass="mr-1"></asp:Label>
            <asp:TextBox ID="datelindja" runat="server"></asp:TextBox>
        </div>
        <div class="mt-1">
            <asp:Label runat="server" Text="Pozicioni" CssClass="mr-1"></asp:Label>
            <asp:TextBox ID="pozicioni" runat="server"></asp:TextBox>
        </div>

        <div class="mt-1">
            <asp:Button ID="insert" runat="server" Text="+ Shto" OnClick="insert_Click" />
            <asp:Button ID="backtopunonjes" runat="server" Text="Go Back" OnClick="backtopunonjes_Click"  />
        
        </div>
        
        </div>

  
    </form>
</body>
</html>
