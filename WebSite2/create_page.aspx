<%@ Page Language="C#" AutoEventWireup="true" CodeFile="create_page.aspx.cs" Inherits="create_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="./main.css" />

</head>
<body>
    <form id="form1" runat="server"  style="padding: 40px">
        <h1 class="headers" style="text-align: center">Create User</h1>
        <div class="flex-center" style="flex-direction: column">
            <div>
                <asp:Label runat="server" Text="Username" CssClass="mr-1"></asp:Label>
                <asp:TextBox ID="username" runat="server"></asp:TextBox><asp:RequiredFieldValidator ValidationGroup="1" ControlToValidate="username" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Cannot be empty"></asp:RequiredFieldValidator>
            </div>
            <div class="mt-1">
                <asp:Label runat="server" Text="Password" CssClass="mr-1"></asp:Label>
                <asp:TextBox ID="password" runat="server"></asp:TextBox><asp:RequiredFieldValidator ValidationGroup="1" ControlToValidate="password" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Cannot be empty"></asp:RequiredFieldValidator>
            </div>
            <div class="mt-2 flex-center">
                <asp:Button ValidationGroup="1" ID="Button1" CssClass="mr-1" runat="server" Text="Krijo" OnClick="Button1_Click" />
                <asp:Button ID="goback" runat="server" Text="Cancel" OnClick="Button2_Click" />
            </div>
        </div>

    </form>
</body>
</html>
