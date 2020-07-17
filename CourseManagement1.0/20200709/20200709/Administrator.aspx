<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administrator.aspx.cs" Inherits="_20200709.Administrator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 742px">
    <form id="form1" runat="server">
        <div style="height: 747px">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4" ForeColor="#333333" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="z-index: 1; left: 27px; top: 125px; position: absolute; height: 624px; width: 1023px" PageSize="15">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Edit" Text="同意" />
                    <asp:ButtonField ButtonType="Button" CommandName="Edit" Text="拒绝" />
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
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CellPadding="15" RepeatDirection="Horizontal" style="z-index: 1; left: 1092px; top: 475px; position: absolute; height: 27px; width: 259px">
                <asp:ListItem>未审核</asp:ListItem>
                <asp:ListItem>已审核</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" CellPadding="15" CellSpacing="3" style="z-index: 1; left: 1091px; top: 521px; position: absolute; height: 27px; width: 388px">
                <asp:ListItem>按用户名排序</asp:ListItem>
                <asp:ListItem>按课头号排序</asp:ListItem>
                <asp:ListItem>按审核状态排序</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 1106px; top: 139px; position: absolute" Text="请输入要查询的课头号"></asp:Label>
            <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 1109px; top: 291px; position: absolute" Text="请输入要查询的用户名"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" style="z-index: 1; left: 1109px; top: 336px; position: absolute; height: 39px; width: 256px"></asp:TextBox>
            <asp:Button ID="Button4" runat="server" style="z-index: 1; left: 42px; top: 44px; position: absolute; height: 55px; width: 118px" Text="课程修改" />
            <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 1111px; top: 237px; position: absolute"></asp:Label>
            <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 1112px; top: 391px; position: absolute"></asp:Label>
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" style="z-index: 1; left: 1129px; top: 695px; position: absolute; height: 57px; width: 170px; font-size: xx-large; font-weight: 700" Text="查询" />
            <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal" style="z-index: 1; left: 1108px; top: 443px; position: absolute; height: 27px; width: 252px">
                <asp:ListItem>升序</asp:ListItem>
                <asp:ListItem>降序</asp:ListItem>
            </asp:RadioButtonList>
            <asp:TextBox ID="TextBox6" runat="server" style="z-index: 1; left: 1104px; top: 177px; position: absolute; height: 37px; width: 274px"></asp:TextBox>
        </div>
    </form>
</body>
</html>
