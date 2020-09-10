<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Task6.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>Список продуктов:</p>
            <asp:ListBox ID="ProductsList" runat="server" Rows="5" Width="350" SelectionMode="Multiple">
                <asp:ListItem>Помидоры</asp:ListItem>
                <asp:ListItem>Картошка</asp:ListItem>
                <asp:ListItem>Зелень</asp:ListItem>
                <asp:ListItem>Огурцы</asp:ListItem>
                <asp:ListItem>Сметана</asp:ListItem>
            </asp:ListBox>

            <p>Корзина(выбранные продукты):</p>
            <asp:ListBox ID="Basket" runat="server" Rows="5" Width="350" SelectionMode="Multiple"></asp:ListBox><br/>

            <asp:Button OnClick="deleteProduct" Text="В корзину" runat="server" />
            <asp:Button OnClick="addProduct" Text="Убрать из корзины" runat="server" />
            <br/>
            <asp:Button OnClick="allToCart" Text="Перенести все в корзину" runat="server" />
            <asp:Button OnClick="allFromCart" Text="Убрать все элементы из корзины" runat="server" />

            <br/><br/>

            <asp:RadioButton ID="blueTheme_rb" runat="server" Text="Blue" GroupName="themes" Checked="true" />  
            <br/>
            <asp:RadioButton ID="orangeTheme_rb" runat="server" Text="Orange" GroupName="themes"/>  
            <br/><br/>

            <asp:Button OnClick="changeTheme" Text="Сменить тему" runat="server" />
        </div>
    </form>
</body>
</html>
