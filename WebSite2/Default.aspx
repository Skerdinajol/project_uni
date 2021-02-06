<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="./main.css" />
</head>
<body class="login-bg">
     <h1 class="headers">Logohuni</h1>
    <form id="form1" runat="server" style="width: 340px; display: flex; justify-content: center; align-content: center">
        <div>
            <div style="display: flex; align-items: center" class="mb-1">
                <label class="mr-1">Username</label>
                <asp:TextBox  ID="username" runat="server"></asp:TextBox>
            </div>
                <asp:RequiredFieldValidator ControlToValidate="username" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Cannot be empty"></asp:RequiredFieldValidator>
            <div>
                <label class="mr-1 mt-1">Password</label>
                <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="password" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Cannot be empty"></asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Button CssClass="full-width primary" ID="Button1" runat="server" Text="Log In" OnClick="LogIn_Click" />
        <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
            </div>
        </div>
        <br />
    </form>
</body>
</html>
