<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_20200709.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 834px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 282px; top: 242px; position: absolute; height: 339px; width: 890px">
            <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 247px; top: 74px; position: absolute" Text="用户名："></asp:Label>
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 325px; top: 67px; position: absolute; height: 32px; width: 269px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 379px; top: 281px; position: absolute; height: 20px; width: 182px; color: #FF0000;"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" style="z-index: 1; left: 325px; top: 134px; position: absolute; height: 32px; width: 268px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 326px; top: 201px; position: absolute; height: 42px; width: 96px" Text="登录" />
            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 267px; top: 140px; position: absolute" Text="密码："></asp:Label>
            <asp:Button ID="Button2" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" OnClick="Button2_Click" style="z-index: 1; left: 450px; top: 214px; position: absolute; text-decoration: underline" Text="注册" />
            <asp:Button ID="Button3" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" style="z-index: 1; left: 517px; top: 213px; position: absolute; text-decoration: underline" Text="忘记密码" OnClick="Button3_Click" />
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
