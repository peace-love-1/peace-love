<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="_20200709.AddCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
            margin-top: 0px;
            margin-bottom: 2px;
            width: 645px;
            height: 646px;
            position: absolute;
            top: 139px;
            left: 438px;
            z-index: 1;
        }
        .auto-style3 {
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            text-align: left;
            margin-bottom: 0px;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            position: absolute;
            top: 15px;
            left: 1759px;
            z-index: 1;
            width: 51px;
        }
        .auto-style8 {
            width: 195px;
            height: 30px;
            position: absolute;
            top: 63px;
            left: 740px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 67px;
            left: 579px;
            z-index: 1;
            width: 245px;
            right: 1048px;
            height: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style5">
            <asp:Label ID="Label1" runat="server" Text="peace&amp;love Course Management Platform&nbsp;"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="auto-style7">返回</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
        </div>
        <div class="auto-style4">
            <div class="auto-style6">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" CssClass="auto-style8">
                    <asp:ListItem>通识课</asp:ListItem>
                    <asp:ListItem>专业课</asp:ListItem>
                </asp:RadioButtonList>
            <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" CssClass="auto-style9" Text="选择发布的课程类型："></asp:Label>
            </div>
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style1">
                <br />
                &nbsp;<asp:Label ID="Label3" runat="server" Text=" 课头号："></asp:Label>
                &nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="课程名："></asp:Label>
&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="学分："></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="教师名："></asp:Label>
                &nbsp;
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label7" runat="server" Text="授课学院："></asp:Label>
&nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Panel ID="Panel2" runat="server">
                    <asp:Label ID="Label8" runat="server" Text="专业："></asp:Label>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label9" runat="server" Text="年级："></asp:Label>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </asp:Panel>
                <br />
                <asp:Label ID="Label10" runat="server" Text=" 学年："></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label11" runat="server" Text=" 学期："></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label12" runat="server" Text="学校："></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Height="41px" OnClick="Button1_Click" Text="发布课程" Width="112px" />
                <br />
                <br />
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
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
