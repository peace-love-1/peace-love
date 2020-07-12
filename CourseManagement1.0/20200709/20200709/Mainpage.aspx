<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mainpage.aspx.cs" Inherits="_20200709.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #Text1 {
            height: 88px;
            width: 582px;
        }
        .auto-style1 {
            z-index: 1;
            left: 41px;
            top: 418px;
            position: absolute;
            height: 342px;
            width: 1411px;
        }
        .auto-style2 {
            z-index: 1;
            left: 46px;
            top: 55px;
            position: absolute;
            height: 189px;
            width: 1457px;
        }
        .auto-style3 {
            z-index: 1;
            left: 1564px;
            top: 50px;
            position: absolute;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 757px">
            <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 41px; top: 283px; position: absolute; width: 482px; height: 32px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 558px; top: 281px; position: absolute; height: 37px; width: 66px" Text="搜索" />
            <asp:DropDownList ID="DropDownList2" runat="server" style="z-index: 1; left: 441px; top: 340px; position: absolute">
                <asp:ListItem>计算机学院</asp:ListItem>
                <asp:ListItem>法学院</asp:ListItem>
                <asp:ListItem>哲学院</asp:ListItem>
                <asp:ListItem>网络安全学院</asp:ListItem>
            </asp:DropDownList>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="auto-style1" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="课头号" SortExpression="id" />
                    <asp:BoundField DataField="cname" HeaderText="课程名" SortExpression="cname" />
                    <asp:BoundField DataField="credit" HeaderText="学分" SortExpression="credit" />
                    <asp:BoundField DataField="remain/max" HeaderText="剩余/最大人数" SortExpression="remain/max" />
                    <asp:BoundField DataField="tname" HeaderText="教师名" SortExpression="tname" />
                    <asp:BoundField DataField="title" HeaderText="职称" SortExpression="title" />
                    <asp:BoundField DataField="attribute" HeaderText="属性" SortExpression="attribute" />
                    <asp:BoundField DataField="schoolyear" HeaderText="学年" SortExpression="schoolyear" />
                    <asp:BoundField DataField="schoolterm" HeaderText="学期" SortExpression="schoolterm" />
                    <asp:BoundField DataField="timeandplace" HeaderText="上课时间地点" SortExpression="timeandplace" />
                    <asp:BoundField DataField="remark" HeaderText="备注" SortExpression="remark" />
                    <asp:ButtonField ButtonType="Button" CommandName="Select" Text="选课" />
                </Columns>
            </asp:GridView>
            <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" style="z-index: 1; left: 636px; top: 340px; position: absolute">
                <asp:ListItem>计算机科学与技术</asp:ListItem>
                <asp:ListItem>软件工程</asp:ListItem>
                <asp:ListItem>计算机科学与技术卓越工程师班</asp:ListItem>
                <asp:ListItem>软件工程卓越工程师班</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList4" runat="server" style="z-index: 1; left: 46px; top: 340px; position: absolute">
                <asp:ListItem>专业课选课</asp:ListItem>
                <asp:ListItem>通识课选课</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList1" runat="server" style="z-index: 1; left: 247px; top: 340px; position: absolute; height: 17px; width: 130px">
                <asp:ListItem>2019</asp:ListItem>
                <asp:ListItem>2018</asp:ListItem>
                <asp:ListItem>2017</asp:ListItem>
                <asp:ListItem>2016</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sqlcon %>" SelectCommand="SELECT * FROM [courses]"></asp:SqlDataSource>
            <asp:GridView ID="GridView3" runat="server" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" AutoGenerateColumns="False" CssClass="auto-style2" DataKeyNames="id" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="课头号" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="cname" HeaderText="课程名" SortExpression="cname" />
                    <asp:BoundField DataField="academy" HeaderText="授课学院" SortExpression="academy" />
                    <asp:BoundField DataField="major" HeaderText="专业" SortExpression="major" />
                    <asp:BoundField DataField="type" HeaderText="课程类别" SortExpression="type" />
                    <asp:BoundField DataField="credit" HeaderText="学分" SortExpression="credit" />
                    <asp:BoundField DataField="remain/max" HeaderText="剩余/最大人数" SortExpression="remain/max" />
                    <asp:BoundField DataField="tname" HeaderText="教师名" SortExpression="tname" />
                    <asp:BoundField DataField="title" HeaderText="职称" SortExpression="title" />
                    <asp:BoundField DataField="attribute" HeaderText="属性" SortExpression="attribute" />
                    <asp:BoundField DataField="schoolyear" HeaderText="学年" SortExpression="schoolyear" />
                    <asp:BoundField DataField="schoolterm" HeaderText="学期" SortExpression="schoolterm" />
                    <asp:BoundField DataField="timeandplace" HeaderText="上课时间地点" SortExpression="timeandplace" />
                    <asp:BoundField DataField="remark" HeaderText="备注" SortExpression="remark" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlcon %>" SelectCommand="SELECT * FROM [courses]"></asp:SqlDataSource>
            <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 48px; top: 25px; position: absolute" Text="已选课程"></asp:Label>
            <asp:Button ID="Button3" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" OnClick="Button3_Click" style="text-decoration: underline" Text="退出登录" CssClass="auto-style3" />
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
