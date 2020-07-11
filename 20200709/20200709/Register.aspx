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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 352px; top: 201px; position: absolute; height: 431px; width: 879px; text-align: center">
            <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 233px; top: 100px; position: absolute" Text="用户名"></asp:Label>
            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 247px; top: 164px; position: absolute" Text="密码"></asp:Label>
            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 208px; top: 235px; position: absolute" Text="确认密码"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 330px; top: 91px; position: absolute; height: 31px; width: 196px"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 329px; top: 158px; position: absolute; height: 33px; width: 198px"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 327px; top: 226px; position: absolute; height: 33px; width: 201px"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="z-index: 1; left: 327px; top: 312px; position: absolute; height: 37px; width: 72px" Text="注册" />
        </asp:Panel>
    </form>
</body>
</html>
