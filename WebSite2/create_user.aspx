<%@ Page Language="C#" AutoEventWireup="true" CodeFile="create_user.aspx.cs" Inherits="create_user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="./main.css" />
    <link rel="stylesheet" href="hiddencols.css" />
</head>
<body>
    <h1 class="headers">Users</h1>
    <form id="form1" runat="server">
        <div>
            <asp:GridView DataKeyNames="id" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" SortExpression="id" ItemStyle-CssClass="hiddencols" HeaderStyle-CssClass="hiddencols" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="passw" ItemStyle-CssClass="hiddencols" HeaderStyle-CssClass="hiddencols" HeaderText="passw" SortExpression="passw" >
                    </asp:BoundField>
                    <asp:CommandField ShowDeleteButton="True"  ControlStyle-CssClass="action-btn delete"/>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource 
                ID="SqlDataSource1" 
                runat="server" 
                ConnectionString="<%$ ConnectionStrings:lokaliDbConnectionString %>"
                SelectCommand="SELECT [id], [username], [passw] FROM [loginform]" 
                DeleteCommand="DELETE FROM [loginform] where id=@id;">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
            </asp:SqlDataSource>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="mr-1">
            <asp:Button ID="new_user" runat="server" Text="Krijo User te ri" OnClick="new_user_Click" />
        </div>
        <div>
            <asp:Button ID="backtomain" runat="server" Text="Go Back" OnClick="backtomain_Click" />
        </div>
            </div>
    </form>
</body>
</html>
