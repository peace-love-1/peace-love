﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfessionalCourse.aspx.cs" Inherits="_20200709.WebForm2" %>

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
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            margin-left: 518px;
        }
        .auto-style7 {
            margin-left: 260px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 757px">
            <asp:TreeView ID="TreeView1" runat="server" Height="101px" Width="126px">
                <Nodes>
                    <asp:TreeNode Text="选课" Value="选课">
                        <asp:TreeNode NavigateUrl="~/GeneralCourse.aspx" Text="通识课课" Value="通识课课"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/UserCourse.aspx" Text="已选课程" Value="已选课程"></asp:TreeNode>
                </Nodes>
            </asp:TreeView>
            <br />
            <asp:Panel ID="Panel1" runat="server">
                <div class="auto-style4">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style5"><strong>选课-专业课</strong></span><br />
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
                <div class="auto-style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                </div>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" CssClass="auto-style6" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Width="356px">
                    <asp:ListItem>按学院查询</asp:ListItem>
                    <asp:ListItem>按课程名查询</asp:ListItem>
                </asp:RadioButtonList>
            </asp:Panel>
            <asp:Panel ID="Panel3" runat="server" Visible="False">
                <div class="auto-style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 院系 
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
                <div class="auto-style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 年级 
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
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style7" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="941px">
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
                            <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="Select" OnClick="Button1_Click2" Text="选课" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlcon %>" SelectCommand="SELECT [id], [cname], [credit], [tname], [academy], [major], [grade] FROM [pcourses]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sqlcon %>" SelectCommand="SELECT [id], [cname], [credit], [tname], [academy], [major], [grade] FROM [pcourses] WHERE (([academy] = @academy) AND ([major] = @major) AND ([grade] = @grade))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="academy" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="major" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList3" Name="grade" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:sqlcon %>" SelectCommand="SELECT [id], [cname], [credit], [tname], [academy], [major], [grade] FROM [pcourses] WHERE (([grade] = @grade) AND ([cname] = @cname))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList4" Name="grade" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="TextBox1" Name="cname" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:sqlcon %>" SelectCommand="SELECT [id], [cname], [credit], [tname], [academy], [major], [grade] FROM [pcourses] WHERE ([grade] = @grade)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList4" Name="grade" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
