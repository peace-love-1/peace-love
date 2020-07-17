<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_20200709.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {            height: 674px;
        }
    </style>
</head>
<body style="height: 100%;
            width:100%;            
            margin:0; 
            padding:0;
            background-image:url('image/1.jpg');
            background-size: 100% 100%;
            background-repeat:no-repeat; 
            background-attachment: fixed;" >
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 303px; top: 89px; position: absolute; height: 590px; width: 887px; background-image:url('image/2.jpg');" >
            <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 262px; top: 275px; position: absolute; font-weight: 700;" Text="用户名" BorderStyle="None"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 263px; top: 407px; position: absolute; font-weight: 700;" Text="验证码"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 343px; top: 262px; position: absolute; height: 32px; width: 269px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 368px; top: 529px; position: absolute; height: 20px; width: 182px; color: #FF0000;"></asp:Label>
            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" style="z-index: 1; left: 670px; top: 457px; position: absolute" Text="管理员" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" style="z-index: 1; left: 345px; top: 330px; position: absolute; height: 32px; width: 268px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 346px; top: 454px; position: absolute; height: 42px; width: 96px" Text="登录" />
            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 282px; top: 342px; position: absolute; font-weight: 700;" Text="密码"></asp:Label>
            <asp:Button ID="Button2" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" OnClick="Button2_Click" style="z-index: 1; left: 482px; top: 468px; position: absolute; text-decoration: underline" Text="注册" />
            <asp:Button ID="Button3" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" style="z-index: 1; left: 548px; top: 468px; position: absolute; text-decoration: underline" Text="忘记密码" OnClick="Button3_Click" />
            <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 345px; top: 395px; position: absolute; height: 33px; width: 104px"></asp:TextBox>

            <asp:Image ID="Image1" runat="server" style="z-index: 1; left: 481px; top: 392px; position: absolute; height: 35px; width: 128px" ImageUrl="VerificationCode.aspx"  /><br />

            <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 651px; top: 404px; position: absolute"></asp:Label>
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </form>
    </body>
</html>
<script type="text/javascript">
    var aaa = 1;
    document.getElementById("Image1").onclick = function () {
    this.setAttribute("src", "VerificationCode.aspx?id=" + aaa);
    aaa++;
    };
    </script>
