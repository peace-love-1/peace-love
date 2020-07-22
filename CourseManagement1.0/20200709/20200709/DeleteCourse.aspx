<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteCourse.aspx.cs" Inherits="_20200709.DeleteCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 572px;
            margin-top: 0px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: left;
            position: absolute;
            width: 1852px;
            height: 24px;
            top: 15px;
            left: 10px;
            z-index: 1;
        }
        .auto-style4 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
            peace&amp;love Course Management Platform&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">返回</asp:LinkButton>
            <br />
        </div>
        <div class="auto-style2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <br />
            <br />
            请输入删除课程的课头号：<asp:TextBox ID="TextBox1" runat="server" Width="159px"></asp:TextBox>
&nbsp;
            <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" />
            <br />
            <div class="auto-style4">
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style1" Height="631px" Width="362px">
                <br />
                &nbsp;&nbsp; 课头号： 
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp; 课程名： 
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp; 学分：&nbsp;
                <asp:Label ID="Label3" runat="server"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp; 教师名： 
                <asp:Label ID="Label4" runat="server"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp; 授课学院：<asp:Label ID="Label5" runat="server"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Panel ID="Panel2" runat="server">
                    &nbsp;&nbsp; 专业：&nbsp;
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp; 年级：&nbsp;
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                </asp:Panel>
                <br />
                &nbsp;&nbsp; 学年：&nbsp;
                <asp:Label ID="Label8" runat="server"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp; 学期：&nbsp;
                <asp:Label ID="Label9" runat="server"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp; 类型：&nbsp;
                <asp:Label ID="Label10" runat="server"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;学校：&nbsp;
                <asp:Label ID="Label11" runat="server"></asp:Label>
                <br />
&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Height="43px" OnClick="Button2_Click" OnClientClick="return confirm('是否确定删除该课程吗？')" Text="删除课程" Width="98px" />
            </asp:Panel>
            </div>
        </div>
    </form>
</body>
</html>
