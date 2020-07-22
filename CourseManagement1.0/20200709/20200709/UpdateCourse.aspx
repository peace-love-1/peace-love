<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateCourse.aspx.cs" Inherits="_20200709.UpdateCourse" %>

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
            width: 625px;
            height: 679px;
            position: absolute;
            top: 102px;
            left: 655px;
            z-index: 1;
        }
        .auto-style2 {
            text-align: center;
        }
        center {
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style5 {
            margin-left: 50px;
        }
        .auto-style6 {
            position: absolute;
            top: 15px;
            left: 1799px;
            z-index: 1;
            width: 59px;
        }
        .auto-style7 {
            position: absolute;
            top: 50px;
            left: 521px;
            z-index: 1;
            width: 308px;
            right: 1043px;
        }
        .auto-style8 {
            position: absolute;
            top: 50px;
            left: 777px;
            z-index: 1;
            width: 166px;
            height: 21px;
            right: 921px;
            margin-bottom: 6px;
        }
        .auto-style9 {
            position: absolute;
            top: 51px;
            left: 973px;
            z-index: 1;
            height: 28px;
            width: 70px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
            <asp:Label ID="Label3" runat="server" Text="peace&amp;love Course Management Platform&nbsp;"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="auto-style6">返回</asp:LinkButton>
            &nbsp;<br />
        </div>
    <div class="auto-style2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" CssClass="auto-style9" OnClick="Button1_Click" Text="查询" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label15" runat="server" CssClass="auto-style7" Text="请输入修改课程的课头号:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style8"></asp:TextBox>
&nbsp;
        </div>
        <div class="auto-style2">
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style1">
                <div class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="课头号："></asp:Label>
                    &nbsp;
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="类型："></asp:Label>
                    &nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="课程名："></asp:Label>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="学分："></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="教师名："></asp:Label>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label9" runat="server" Text="授课学院："></asp:Label>
                    &nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </div>
                <asp:Panel ID="Panel2" runat="server">
                    <div class="auto-style3">
                        <asp:Label ID="Label10" runat="server" Text="专业："></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label11" runat="server" Text="年级："></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </div>
                </asp:Panel>
                <div class="auto-style3">
                    <br />
                    <asp:Label ID="Label12" runat="server" Text="学年："></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label13" runat="server" Text="学期："></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label14" runat="server" Text="学校："></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" Height="39px" OnClick="Button2_Click" Text="修改课程 " Width="140px" CssClass="auto-style5" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                </div>
            </asp:Panel>
        </div>
    </form>
    </body>
</html>
