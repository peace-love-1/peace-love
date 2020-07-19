<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfessionalCourse.aspx.cs" Inherits="_20200709.WebForm2" %>

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
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            margin-left: 326px;
        }
        .auto-style7 {
            margin-left: 74px;
        }
        .auto-style8 {
            height: 957px;
            margin-top: 0px;
            width: 1489px;
        }
        .auto-style10 {
            width: 721px;
            height: 687px;
            position: absolute;
            left: 1107px;
            top: 144px;
            margin-left: 0px;
            margin-right: 0px;
        }
        .auto-style11 {
            text-align: justify;
        }
        .auto-style12 {
            text-align: justify;
            width: 1039px;
            margin-left: 162px;
        }
        .auto-style13 {
            text-align: justify;
            margin-left: 108px;
        }
        .auto-style14 {
            text-align: justify;
            margin-left: 310px;
        }
        .auto-style15 {
            font-size: x-large;
            font-weight: bold;
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
        <div class="auto-style8">
            <asp:TreeView ID="TreeView1" runat="server" Height="101px" Width="126px">
                <Nodes>
                    <asp:TreeNode Text="选课" Value="选课">
                        <asp:TreeNode NavigateUrl="~/GeneralCourse.aspx" Text="通识课课" Value="通识课课"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/UserCourse.aspx" Text="已选课程" Value="已选课程"></asp:TreeNode>
                </Nodes>
            </asp:TreeView>
            <div class="auto-style20">
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">退出登录</asp:LinkButton>
            </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Panel ID="Panel1" runat="server">
                <div class="auto-style14">
                    &nbsp;<span class="auto-style5"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 选课-专业课<br /> </strong></span><br />
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
                <div class="auto-style11">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" CssClass="auto-style6" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Width="356px">
                        <asp:ListItem>按学院查询</asp:ListItem>
                        <asp:ListItem>按课程名查询</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel3" runat="server" Visible="False">
                <div class="auto-style13">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 学校&nbsp;<asp:DropDownList ID="DropDownList5" runat="server">
                        <asp:ListItem>武汉大学</asp:ListItem>
                        <asp:ListItem>华中科技大学</asp:ListItem>
                        <asp:ListItem>北京大学</asp:ListItem>
                        <asp:ListItem>清华大学</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp; 院系 
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>计算机学院</asp:ListItem>
                        <asp:ListItem>测绘学院</asp:ListItem>
                        <asp:ListItem>文学院</asp:ListItem>
                        <asp:ListItem>法学院</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp; 专业 
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>计算机科学与技术</asp:ListItem>
                        <asp:ListItem>软件工程</asp:ListItem>
                        <asp:ListItem>计算机类</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp; 年级 
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>2019</asp:ListItem>
                        <asp:ListItem>2018</asp:ListItem>
                        <asp:ListItem>2017</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
                    <asp:Button ID="Button2" runat="server" BackColor="#99CCFF" Text="查询" OnClick="Button2_Click" />
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel4" runat="server" Visible="False">
                <div class="auto-style12">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 学校&nbsp;<asp:DropDownList ID="DropDownList6" runat="server">
                        <asp:ListItem>武汉大学</asp:ListItem>
                        <asp:ListItem>华中科技大学</asp:ListItem>
                        <asp:ListItem>北京大学</asp:ListItem>
                        <asp:ListItem>清华大学</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp; 年级 
                    <asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem>2019</asp:ListItem>
                        <asp:ListItem>2018</asp:ListItem>
                        <asp:ListItem>2017</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp; 课程名 
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="#99CCFF" Text="查询" OnClick="Button1_Click1" />
                </div>
            </asp:Panel>
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style7" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="941px" OnDataBound="GridView1_DataBound">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="课头号" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="cname" HeaderText="课程名" SortExpression="cname" />
                    <asp:BoundField DataField="credit" HeaderText="学分" SortExpression="credit" />
                    <asp:BoundField DataField="tname" HeaderText="教师名" SortExpression="tname" />
                    <asp:BoundField DataField="academy" HeaderText="授课学院" SortExpression="academy" />
                    <asp:BoundField DataField="major" HeaderText="专业" SortExpression="major" />
                    <asp:BoundField DataField="grade" HeaderText="年级" SortExpression="grade" />
                    <asp:TemplateField HeaderText="选课">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="Select" OnClick="Button1_Click" Text="选课" />
                        </ItemTemplate>
                    </asp:TemplateField>
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sqlcon %>" SelectCommand="SELECT [id], [cname], [credit], [tname], [academy], [major], [grade] FROM [pcourses] WHERE (([academy] = @academy) AND ([major] = @major) AND ([grade] = @grade) AND ([school] = @school))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="academy" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="major" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList3" Name="grade" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList5" Name="school" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:sqlcon %>" SelectCommand="SELECT [id], [cname], [credit], [tname], [academy], [major], [grade] FROM [pcourses] WHERE (([grade] = @grade) AND ([cname] = @cname) AND ([school] = @school))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList4" Name="grade" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="TextBox1" Name="cname" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList6" Name="school" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:sqlcon %>" SelectCommand="SELECT [id], [cname], [credit], [tname], [academy], [major], [grade] FROM [pcourses] WHERE (([grade] = @grade) AND ([school] = @school))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList4" Name="grade" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList6" Name="school" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <div class="auto-style10">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style15">选课申请单（专业课）<br />
                </span><br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="16px" Width="347px" OnDataBound="GridView2_DataBound">
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlcon %>" SelectCommand="SELECT [id], [cname], [state] FROM [application] WHERE (([account] = @account) AND ([type] = @type))">
                    <SelectParameters>
                        <asp:SessionParameter Name="account" SessionField="account" Type="String" />
                        <asp:Parameter DefaultValue="专业课" Name="type" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                &nbsp; <font class="auto-style16" color="#ff0000" name="promptTitle" style="margin: 0px; padding: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
                <br />
                <br />
                <span class="auto-style18">提示:</span></font><span class="auto-style17" style="color: rgb(0, 0, 0); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none; background-color: rgb(255, 255, 255)">&nbsp;</span><span class="auto-style17" name="promptTaxt" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">选课成功的部分已存在于您的课表中，请确认！</span><br />
                <br />
            </div>
            <br />
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
