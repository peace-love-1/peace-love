<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GeneralCourse.aspx.cs" Inherits="_20200709.GeneralCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            margin-left: 236px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:TreeView ID="TreeView1" runat="server">
                <Nodes>
                    <asp:TreeNode Text="选课" Value="选课">
                        <asp:TreeNode NavigateUrl="~/ProfessionalCourse.aspx" Text="专业课" Value="专业课"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/UserCourse.aspx" Text="已选课程" Value="已选课程"></asp:TreeNode>
                </Nodes>
            </asp:TreeView>
            <br />
            <asp:Panel ID="Panel1" runat="server">
                <div class="auto-style2">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style1">选课-通识课</span></strong><br />
                </div>
            </asp:Panel>
            <div class="auto-style2">
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 课程名/教师名&nbsp; 
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#99CCFF" Text="查询" OnClick="Button1_Click" />
                <br />
                <br />
                <br />
            </div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style3" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="978px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="课头号" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="cname" HeaderText="课程名" SortExpression="cname" />
                    <asp:BoundField DataField="credit" HeaderText="学分" SortExpression="credit" />
                    <asp:BoundField DataField="tname" HeaderText="教师名" SortExpression="tname" />
                    <asp:BoundField DataField="academy" HeaderText="授课学院" SortExpression="academy" />
                    <asp:TemplateField HeaderText="选课">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="Select" OnClick="Button1_Click1" Text="选课" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="操作" ShowHeader="True" Text="查看详情" />
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:sqlcon %>" SelectCommand="SELECT [id], [cname], [credit], [tname], [academy] FROM [gcourses] WHERE ([tname] = @tname)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="tname" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlcon %>" SelectCommand="SELECT [id], [cname], [credit], [tname], [academy] FROM [gcourses]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sqlcon %>" SelectCommand="SELECT [id], [cname], [credit], [tname], [academy] FROM [gcourses] WHERE ([cname] = @cname)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="cname" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
