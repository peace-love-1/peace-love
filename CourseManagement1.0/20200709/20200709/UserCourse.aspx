<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserCourse.aspx.cs" Inherits="_20200709.selected_courses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            font-weight: bold;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            margin-left: 309px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TreeView ID="TreeView1" runat="server">
                <Nodes>
                    <asp:TreeNode Text="选课" Value="选课">
                        <asp:TreeNode Text="专业课" Value="专业课" NavigateUrl="~/ProfessionalCourse.aspx"></asp:TreeNode>
                        <asp:TreeNode Text="通识课" Value="通识课" NavigateUrl="~/GeneralCourse.aspx"></asp:TreeNode>
                    </asp:TreeNode>
                </Nodes>
            </asp:TreeView>
            <br />
            <asp:Panel ID="Panel1" runat="server">
                <div class="auto-style2">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1">&nbsp;已选课程表</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </div>
            </asp:Panel>
            <div class="auto-style2">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 学年 
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>2019-2020</asp:ListItem>
                <asp:ListItem>2018-2019</asp:ListItem>
                <asp:ListItem>2017-2018</asp:ListItem>
                <asp:ListItem>2016-2017</asp:ListItem>
            </asp:DropDownList>
&nbsp; 学期 
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="查询" BackColor="#99CCFF" />
            <br />
            <br />
            </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="807px" CssClass="auto-style3">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="课头号" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="cname" HeaderText="课程名" SortExpression="cname" />
                    <asp:BoundField DataField="type" HeaderText="课程类型" SortExpression="type" />
                    <asp:BoundField DataField="credit" HeaderText="学分" SortExpression="credit" />
                    <asp:BoundField DataField="tname" HeaderText="教师名" SortExpression="tname" />
                    <asp:BoundField DataField="academy" HeaderText="授课学院" SortExpression="academy" />
                    <asp:BoundField DataField="major" HeaderText="专业" SortExpression="major" />
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="操作" ShowHeader="True" Text="课程详情" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlcon %>" SelectCommand="SELECT [id], [cname], [type], [credit], [tname], [academy], [major] FROM [ucourses]"></asp:SqlDataSource>
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
