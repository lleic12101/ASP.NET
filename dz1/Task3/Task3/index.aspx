<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Task3.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>Регистрация:</p>

            <p>Введите Ваш логин:</p>
            <asp:TextBox ID="login_tb" runat="server" />

            <p>Введите Ваш пароль:</p>
            <asp:TextBox ID="pass_tb" runat="server" />

            <p>Выберите Ваш пол:</p>
            <asp:RadioButton ID="gender1_rb" runat="server" Text="Мужской" GroupName="gender" Checked="true" />  
            <br/>
            <asp:RadioButton ID="gender2_rb" runat="server" Text="Женский" GroupName="gender"/> 

            <p>Как Вы о нас узнали?</p>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Знакомые"/>  
            <br/>
            <asp:CheckBox ID="CheckBox2" runat="server" Text="Реклама"/>  
            <br/>
            <asp:CheckBox ID="CheckBox3" runat="server" Text="Интернет"/>  

            <p>Введите немного о себе:</p>
            <asp:TextBox id="TextArea1" TextMode="multiline" Columns="50" Rows="5" runat="server" />

            <br/><br/>
            <asp:Button Text="Зарегистрироваться" runat="server" />
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
