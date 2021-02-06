<%@ Page Language="C#" AutoEventWireup="true" CodeFile="produkt.aspx.cs" Inherits="produkt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="./main.css" />

</head>
<body>
    <form id="form1" runat="server">
        <h1 class="headers">Produktet</h1>

        <div>
            <asp:GridView DataKeyNames="produkt_id" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="produkte" Width="826px">
                <Columns>
                    <asp:BoundField ItemStyle-CssClass="hiddencols" HeaderStyle-CssClass="hiddencols" DataField="produkt_id" HeaderText="produkt_id" InsertVisible="False" SortExpression="produkt_id" />
                    <asp:BoundField DataField="Emer" HeaderText="Emer" SortExpression="Emer" />
                    <asp:BoundField DataField="Sasia" HeaderText="Sasia" SortExpression="Sasia" />
                    <asp:BoundField DataField="Cmimi" HeaderText="Cmimi" SortExpression="Cmimi" />
                    <asp:CommandField ControlStyle-CssClass="action-btn" ShowEditButton="True" EditText="Edit Product" />
                    <asp:CommandField ControlStyle-CssClass="action-btn delete" ShowDeleteButton="true" EditText="Delete Product" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource 
                ID="produkte" 
                runat="server" 
                DataSourceMode="DataSet"
                ConnectionString="<%$ ConnectionStrings:lokaliDbConnectionString %>" 
                SelectCommand="SELECT [produkt_id], [Emer], [Sasia], [Cmimi] FROM [produkte]" 
                UpdateCommand="UPDATE [produkte] SET Emer=@Emer, Sasia=@Sasia, Cmimi=@Cmimi where produkt_id=@produkt_id" 
                DeleteCommand="DELETE FROM [produkte] WHERE produkt_id=@produkt_id;">
                <DeleteParameters>
                    <asp:Parameter Name="produkt_id" Type="Int32" />
                </DeleteParameters>
            </asp:SqlDataSource>
            <div class="mt-2">
            <asp:Button ID="insert_page" runat="server" Text="+ Shto Produkte" OnClick="insert_page_Click" />
        <asp:Button ID="gotomain1" runat="server" Text="Go back" OnClick="gotomain1_Click" />

            </div>
        </div>
        
    </form>
    
</body>
</html>
