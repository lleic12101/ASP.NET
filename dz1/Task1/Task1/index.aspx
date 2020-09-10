<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Task1.index" Theme="Blue" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>Введите Ваш логин:</p>
            <asp:TextBox ID="login_tb" runat="server" />
            <p>Введите Ваш пароль:</p>
            <asp:TextBox ID="pass_tb" runat="server" />
            <br/><br/>
            <asp:Button Text="Войти" runat="server" />
        </div>
    </form>
</body>
</html>
