<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="_20200709.zhuce" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 1166px;
        }
        .auto-style1 {
            z-index: 1;
            left: 450px;
            top: 313px;
            position: absolute;
            width: 72px;
            text-decoration: underline;
        }
        .auto-style3 {
            z-index: 1;
            left: 331px;
            top: 302px;
            position: absolute;
            height: 38px;
            width: 72px;
        }
        .auto-style4 {
            z-index: 1;
            left: 332px;
            top: 379px;
            position: absolute;
            margin-top: 3px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 352px; top: 201px; position: absolute; height: 431px; width: 879px; text-align: center">
            <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 233px; top: 100px; position: absolute" Text="用户名"></asp:Label>
            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 247px; top: 164px; position: absolute" Text="密码"></asp:Label>
            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 208px; top: 235px; position: absolute" Text="确认密码"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 330px; top: 91px; position: absolute; height: 31px; width: 196px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 329px; top: 158px; position: absolute; height: 33px; width: 198px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 327px; top: 226px; position: absolute; height: 33px; width: 201px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="注册" CssClass="auto-style3" />
            <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 564px; top: 97px; position: absolute"></asp:Label>
            <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 566px; top: 165px; position: absolute"></asp:Label>
            <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 566px; top: 230px; position: absolute"></asp:Label>
            <asp:Label ID="Label7" runat="server" CssClass="auto-style4"></asp:Label>
            &nbsp;&nbsp;&nbsp;
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
            <br />
            &nbsp;&nbsp;<asp:Button ID="Button4" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" CssClass="auto-style1" OnClick="Button4_Click" Text="返回" />
            &nbsp;&nbsp;
            <br />
            &nbsp;</asp:Panel>
    </form>
</body>
</html>
