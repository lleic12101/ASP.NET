<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Task5.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox ID="ListBox1" runat="server" Rows="5" Width="350">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>three</asp:ListItem>
            </asp:ListBox>

            <p>Введите значения для добавления:</p>
            <asp:TextBox ID="addItem_tb" runat="server" />
            <asp:Button OnClick="addItem" Text="Добавить" runat="server" /><br/>

            <p>Введите значения для удаления:</p>
            <asp:TextBox ID="removeItem_tb" runat="server" />
            <asp:Button OnClick="deleteItem" Text="Удалить" runat="server" /><br/>

            <p>Введите значения, потом значение на которое хотите заменить:</p>
            <asp:TextBox ID="findItem_tb" runat="server" />
            <asp:TextBox ID="replaceItem_tb" runat="server" />
            <asp:Button OnClick="editItem" Text="Изменить" runat="server" /><br/>

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
