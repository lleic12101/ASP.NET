<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Task4.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server"></asp:CheckBoxList>

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
