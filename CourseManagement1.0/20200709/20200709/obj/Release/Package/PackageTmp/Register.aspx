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
            left: 449px;
            top: 464px;
            position: absolute;
            width: 72px;
            text-decoration: underline;
        }
        .auto-style3 {
            z-index: 1;
            left: 337px;
            top: 454px;
            position: absolute;
            height: 38px;
            width: 72px;
        }
        .auto-style4 {
            z-index: 1;
            left: 332px;
            top: 526px;
            position: absolute;
            margin-top: 3px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 359px; top: 101px; position: absolute; height: 606px; width: 879px; text-align: center">
            <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 233px; top: 100px; position: absolute" Text="用户名"></asp:Label>

            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 247px; top: 164px; position: absolute" Text="密码"></asp:Label>
            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 208px; top: 235px; position: absolute" Text="确认密码"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 330px; top: 91px; position: absolute; height: 31px; width: 196px" OnTextChanged="TextBox1_TextChanged" AutoPostBack="True"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 329px; top: 158px; position: absolute; height: 33px; width: 198px" OnTextChanged="TextBox2_TextChanged" AutoPostBack="True"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 327px; top: 226px; position: absolute; height: 33px; width: 201px" OnTextChanged="TextBox3_TextChanged" AutoPostBack="True"></asp:TextBox>
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
            <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 243px; top: 311px; position: absolute" Text="邮箱"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 327px; top: 302px; position: absolute; height: 33px; width: 140px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" style="z-index: 1; left: 483px; top: 303px; position: absolute; height: 35px; width: 50px;" Text="发送" />
            <br />
            <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 189px; top: 377px; position: absolute" Text="邮箱验证码"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 570px; top: 374px; position: absolute"></asp:Label>
            <br />
            &nbsp;&nbsp;<asp:Button ID="Button4" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" CssClass="auto-style1" OnClick="Button4_Click" Text="返回" />
            &nbsp;&nbsp;
            <br />
            &nbsp;<asp:TextBox ID="TextBox5" runat="server" style="z-index: 1; left: 328px; top: 364px; position: absolute; height: 31px; width: 195px" OnTextChanged="TextBox5_TextChanged" AutoPostBack="True"></asp:TextBox>
            <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 569px; top: 306px; position: absolute"></asp:Label>
            <asp:Label ID="Label12" runat="server" style="z-index: 1; left: 612px; top: 514px; position: absolute"></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>
