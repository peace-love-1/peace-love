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
         .auto-style5 {
            width: 458px;
            height: 128px;
            position: absolute;
            left: 1412px;
            top: 0;
            margin-bottom: 3px;
        }
    </style>
</head>
<body style="background-image: url('image1/3.jpg');
            background-size: 100% 100%;
            background-repeat:no-repeat; 
            background-attachment: fixed;"">
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
            <div class="auto-style5">
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">退出登录</asp:LinkButton>
            </div>
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学校&nbsp;<asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>全部</asp:ListItem>
                    <asp:ListItem>武汉大学</asp:ListItem>
                    <asp:ListItem>华中科技大学</asp:ListItem>
                    <asp:ListItem>北京大学</asp:ListItem>
                    <asp:ListItem>清华大学</asp:ListItem>
                </asp:DropDownList>
                &nbsp; 学年 
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>2019-2020</asp:ListItem>
                <asp:ListItem>2018-2019</asp:ListItem>
                <asp:ListItem>2017-2018</asp:ListItem>
                <asp:ListItem>2016-2017</asp:ListItem>
            </asp:DropDownList>
&nbsp; 学期 
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="查询" BackColor="#99CCFF" OnClick="Button1_Click" />
            <br />
            <br />
            </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="807px" CssClass="auto-style3">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="课头号" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="cname" HeaderText="课程名" SortExpression="cname" />
                    <asp:BoundField DataField="credit" HeaderText="学分" SortExpression="credit" />
                    <asp:BoundField DataField="school" HeaderText="学校" SortExpression="school" />
                    <asp:BoundField DataField="type" HeaderText="类型" SortExpression="type" />
                    <asp:BoundField DataField="academy" HeaderText="学院" SortExpression="academy" />
                    <asp:BoundField DataField="major" HeaderText="专业" SortExpression="major" />
                    <asp:BoundField DataField="tname" HeaderText="教师名" SortExpression="tname" />
                    <asp:TemplateField HeaderText="操作">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="Select" OnClick="Button1_Click2" Text="撤课" OnClientClick="return confirm('是否确定撤掉该课程吗？')" />
                        </ItemTemplate>
                    </asp:TemplateField>
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sqlcon %>" SelectCommand="SELECT [id], [cname], [credit], [school], [type], [academy], [major], [tname] FROM [ucourses] WHERE (([schoolyear] = @schoolyear) AND ([schoolterm] = @schoolterm) AND ([account] = @account))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="schoolyear" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="schoolterm" PropertyName="SelectedValue" Type="Int32" />
                    <asp:SessionParameter Name="account" SessionField="account" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:sqlcon %>" SelectCommand="SELECT [id], [cname], [credit], [school], [type], [academy], [major], [tname] FROM [ucourses] WHERE (([school] = @school) AND ([schoolyear] = @schoolyear) AND ([schoolterm] = @schoolterm) AND ([account] = @account))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList3" Name="school" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="schoolyear" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="schoolterm" PropertyName="SelectedValue" Type="Int32" />
                    <asp:SessionParameter Name="account" SessionField="account" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
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
