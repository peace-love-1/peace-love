<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteCourse.aspx.cs" Inherits="_20200709.DeleteCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
            margin-top: 0px;
            width: 442px;
            height: 597px;
            position: absolute;
            top: 117px;
            left: 674px;
            z-index: 1;
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
        .auto-style5 {
            position: absolute;
            top: 0px;
            left: 1778px;
            z-index: 1;
            width: 57px;
        }
        .auto-style6 {
            position: absolute;
            top: 59px;
            left: 570px;
            z-index: 1;
            width: 292px;
            right: 1010px;
        }
        .auto-style7 {
            position: absolute;
            top: 57px;
            left: 810px;
            z-index: 1;
            height: 27px;
        }
        .auto-style8 {
            position: absolute;
            top: 56px;
            left: 1003px;
            z-index: 1;
            width: 94px;
            height: 34px;
        }
        .auto-style9 {
            margin-left: 71px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
            <asp:Label ID="Label12" runat="server" Text="peace&amp;love Course Management Platform"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="auto-style5">返回</asp:LinkButton>
            <br />
        </div>
        <div class="auto-style2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <br />
            <br />
            <asp:Label ID="Label13" runat="server" CssClass="auto-style6" Text="请输入删除课程的课头号："></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="159px" CssClass="auto-style7"></asp:TextBox>
&nbsp;
            <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" CssClass="auto-style8" />
            <br />
            <div class="auto-style4">
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style1">
                <div class="auto-style4">
                    <br />
                    &nbsp;&nbsp;
                    <asp:Label ID="Label14" runat="server" Text="课头号："></asp:Label>
                    &nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;
                    <asp:Label ID="Label15" runat="server" Text="课程名："></asp:Label>
                    &nbsp;<asp:Label ID="Label2" runat="server"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;
                    <asp:Label ID="Label16" runat="server" Text=" 学分："></asp:Label>
                    &nbsp;
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;
                    <asp:Label ID="Label17" runat="server" Text="教师名："></asp:Label>
                    &nbsp;<asp:Label ID="Label4" runat="server"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;
                    <asp:Label ID="Label18" runat="server" Text="授课学院："></asp:Label>
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
                <asp:Panel ID="Panel2" runat="server">
                    <div class="auto-style4">
                        &nbsp;&nbsp;
                        <asp:Label ID="Label19" runat="server" Text="专业："></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label6" runat="server"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;
                        <asp:Label ID="Label20" runat="server" Text="年级："></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label7" runat="server"></asp:Label>
                    </div>
                </asp:Panel>
                <div class="auto-style4">
                    <br />
                    &nbsp;&nbsp;
                    <asp:Label ID="Label21" runat="server" Text="学年："></asp:Label>
                    &nbsp;
                    <asp:Label ID="Label8" runat="server"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;
                    <asp:Label ID="Label22" runat="server" Text="学期："></asp:Label>
                    &nbsp;
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;
                    <asp:Label ID="Label23" runat="server" Text="类型："></asp:Label>
                    &nbsp;
                    <asp:Label ID="Label10" runat="server"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;
                    <asp:Label ID="Label24" runat="server" Text="学校："></asp:Label>
                    &nbsp;
                    <asp:Label ID="Label11" runat="server"></asp:Label>
                    <br />
                    &nbsp;<br />
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style9" Height="43px" OnClick="Button2_Click" OnClientClick="return confirm('是否确定删除该课程吗？')" Text="删除课程" Width="132px" />
                </div>
            </asp:Panel>
            </div>
        </div>
    </form>
</body>
</html>
