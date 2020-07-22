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
        .auto-style3 {
            margin-left: 35px;
        }
        .auto-style4 {
            width: 1261px;
        }
        .auto-style5 {
            width: 688px;
            height: 637px;
            position: absolute;
            left: 1079px;
            top: 145px;
        }
        .auto-style6 {
            font-size: x-large;
            font-weight: bold;
        }
        .auto-style7 {
            text-align: justify;
            width: 1051px;
            margin-left: 197px;
        }
        .auto-style8 {
            text-align: justify;
            margin-left: 385px;
        }
        .auto-style16 {
            font-family: Arial;
            font-size: large;
        }
        .auto-style17 {
            font-family: Arial;
            font-size: medium;
        }
        .auto-style18 {
            font-size: medium;
        }
         .auto-style20 {
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
        <div class="auto-style4">
            <br />
            <asp:TreeView ID="TreeView1" runat="server">
                <Nodes>
                    <asp:TreeNode Text="选课" Value="选课">
                        <asp:TreeNode NavigateUrl="~/ProfessionalCourse.aspx" Text="专业课" Value="专业课"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/UserCourse.aspx" Text="已选课程" Value="已选课程"></asp:TreeNode>
                </Nodes>
            </asp:TreeView>
            <div class="auto-style20">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">退出登录</asp:LinkButton>
            </div>
            <br />
            <asp:Panel ID="Panel1" runat="server">
                <div class="auto-style8">
                    <br />
                    &nbsp;&nbsp; <strong><span class="auto-style1">选课-通识课</span></strong><br />
                </div>
            </asp:Panel>
            <div class="auto-style7">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学校&nbsp; 
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>武汉大学</asp:ListItem>
                    <asp:ListItem>华中科技大学</asp:ListItem>
                    <asp:ListItem>北京大学</asp:ListItem>
                    <asp:ListItem>清华大学</asp:ListItem>
                </asp:DropDownList>
                &nbsp; 课程名/教师名&nbsp; 
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#99CCFF" Text="查询" OnClick="Button1_Click" />
                <br />
                <br />
            </div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style3" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="978px" OnDataBound="GridView1_DataBound">
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
            &nbsp;<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:sqlcon %>" SelectCommand="SELECT [id], [cname], [credit], [tname], [academy] FROM [gcourses] WHERE (([school] = @school) AND ([tname] LIKE '%' + @tname + '%'))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="school" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="TextBox1" Name="tname" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlcon %>" SelectCommand="SELECT [id], [cname], [credit], [tname], [academy] FROM [gcourses] WHERE ([school] = @school)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="school" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sqlcon %>" SelectCommand="SELECT [id], [cname], [credit], [tname], [academy] FROM [gcourses] WHERE (([school] = @school) AND ([cname] LIKE '%' + @cname + '%'))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="school" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="TextBox1" Name="cname" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <div class="auto-style5">
                <br />
&nbsp;&nbsp;&nbsp; <span class="auto-style6">选课申请(通识课）</span><br />
                <br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" Height="16px" Width="349px" OnDataBound="GridView2_DataBound">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="课头号" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="cname" HeaderText="课程名" SortExpression="cname" />
                        <asp:BoundField DataField="state" HeaderText="状态" SortExpression="state" />
                        <asp:TemplateField HeaderText="操作">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="Select" OnClick="LinkButton1_Click" Text="删除"></asp:LinkButton>
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
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:sqlcon %>" SelectCommand="SELECT [id], [cname], [state] FROM [application2] WHERE (([account] = @account) AND ([type] = @type))">
                    <SelectParameters>
                        <asp:SessionParameter Name="account" SessionField="account" Type="String" />
                        <asp:Parameter DefaultValue="通识课" Name="type" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <font class="auto-style16" color="#ff0000" name="promptTitle" style="margin: 0px; padding: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
                <br />
                <span class="auto-style18">提示:</span></font><span class="auto-style17" style="color: rgb(0, 0, 0); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none; background-color: rgb(255, 255, 255)">&nbsp;</span><span class="auto-style17" name="promptTaxt" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">选课成功的部分已存在于您的课表中，请确认！</span></div>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
