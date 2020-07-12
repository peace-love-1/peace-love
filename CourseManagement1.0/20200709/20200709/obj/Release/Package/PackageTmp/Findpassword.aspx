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
        <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 358px; top: 185px; position: absolute; height: 437px; width: 834px">
            <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 245px; top: 102px; position: absolute" Text="用户名"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 339px; top: 93px; position: absolute; height: 30px; width: 189px; right: 298px"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 241px; top: 176px; position: absolute" Text="新密码"></asp:Label>
            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 221px; top: 251px; position: absolute" Text="确认密码"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 338px; top: 169px; position: absolute; height: 30px; width: 188px"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 337px; top: 242px; position: absolute; height: 28px; width: 186px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 340px; top: 311px; position: absolute; height: 36px; width: 61px" Text="确定" />
        </asp:Panel>
    </form>
</body>
</html>
