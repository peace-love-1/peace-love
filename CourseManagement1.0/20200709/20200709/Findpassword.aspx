<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Findpassword.aspx.cs" Inherits="_20200709.wangjimima" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 736px;
        }
    </style>
</head>
<body style="height: 755px">
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 228px; top: 182px; position: absolute; height: 437px; width: 1015px">
            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 355px; top: 169px; position: absolute" Text="新密码" Visible="False"></asp:Label>
            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 337px; top: 246px; position: absolute" Text="确认密码" Visible="False"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 454px; top: 161px; position: absolute; height: 30px; width: 225px; right: 328px;" AutoPostBack="True" OnTextChanged="TextBox2_TextChanged" Visible="False"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 455px; top: 242px; position: absolute; height: 28px; width: 225px" AutoPostBack="True" OnTextChanged="TextBox3_TextChanged" Visible="False"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 516px; top: 322px; position: absolute; height: 36px; width: 72px" Text="确定" Visible="False" />
            <asp:Button ID="Button2" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" OnClick="Button2_Click" style="z-index: 1; left: 613px; top: 318px; position: absolute; height: 34px; width: 76px; text-decoration: underline;" Text="上一步" Visible="False" />
            <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 373px; top: 127px; position: absolute" Text="邮箱"></asp:Label>
            <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 315px; top: 209px; position: absolute" Text="邮箱验证码"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 454px; top: 113px; position: absolute; height: 32px; width: 132px"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" AutoPostBack="True" OnTextChanged="TextBox5_TextChanged" style="z-index: 1; left: 453px; top: 201px; position: absolute; height: 30px; width: 227px"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="z-index: 1; left: 607px; top: 114px; position: absolute; height: 30px; width: 79px" Text="发送" />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" style="z-index: 1; left: 516px; top: 280px; position: absolute; height: 37px;" Text="下一步" />
            <asp:Button ID="Button5" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" OnClick="Button5_Click" style="z-index: 1; left: 626px; top: 286px; position: absolute; text-decoration: underline;" Text="返回" />
            <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 731px; top: 119px; position: absolute"></asp:Label>
            <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 741px; top: 209px; position: absolute"></asp:Label>
            <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 510px; top: 387px; position: absolute"></asp:Label>
            <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 738px; top: 168px; position: absolute"></asp:Label>
            <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 742px; top: 251px; position: absolute"></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>
