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
            <asp:GridView ID="GridView2" runat="server" style="z-index: 1; left: 41px; top: 418px; position: absolute; height: 342px; width: 1335px">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="" Text="按钮"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
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
            <asp:GridView ID="GridView3" runat="server" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" style="z-index: 1; left: 46px; top: 55px; position: absolute; height: 189px; width: 1331px">
                <Columns>
                    <asp:ButtonField Text="按钮" />
                </Columns>
            </asp:GridView>
            <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 48px; top: 25px; position: absolute" Text="已选课程"></asp:Label>
            <asp:Button ID="Button3" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" OnClick="Button3_Click" style="z-index: 1; left: 1385px; top: 37px; position: absolute; text-decoration: underline" Text="退出登录" />
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
