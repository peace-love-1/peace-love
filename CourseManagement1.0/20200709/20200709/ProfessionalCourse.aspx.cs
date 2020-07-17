using System;
using System.Web.UI.WebControls;

namespace _20200709
{

    //author:彭子晨
    //create date:2020/07/16  description:专业课选课界面，可以进行查询课程、选课操作
    //update date:2020/07/17  description:增加选课申请表功能
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RadioButtonList1.SelectedIndex = 0;
                Panel3.Visible = true;
                Panel4.Visible = false;
                GridView1.DataSourceID = "SqlDataSource2";
                GridView2.DataSourceID = "SqlDataSource1";
            }

        }

        //通过选择不同的radiobutton显示不同组控件进行查询
        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedIndex == 0)
            {
                Panel3.Visible = true;
                Panel4.Visible = false;
            }
            else
            {
                Panel3.Visible = false;
                Panel4.Visible = true;
            }
        }

        //按学院查询
        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.DataSourceID = "";
            GridView1.DataSourceID = "SqlDataSource2";
        }

        //按课程名查询
        protected void Button1_Click1(object sender, EventArgs e)
        {
            string cname = TextBox1.Text;
            if (cname == "")
            {
                GridView1.DataSourceID = "";
                GridView1.DataSourceID = "SqlDataSource4";
            }
            else 
            {
                GridView1.DataSourceID = "";
                GridView1.DataSourceID = "SqlDataSource3";
            }

        }

        //选课提交到选课申请表
        protected void Button1_Click(object sender, EventArgs e)
        {
            string account = Session["account"].ToString();
            int row = ((GridViewRow)((Button)sender).NamingContainer).RowIndex;
            string id = GridView1.Rows[row].Cells[1].Text;
            string state = "待审核";
            Data_access.InsertUc(account, id, state);
            GridView2.DataSourceID = "SqlDataSource1";
            Button button = (Button)GridView1.Rows[row].FindControl("Button1");
            button.Enabled = false;
        }

        //删除选课申请表中的申请
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string account = Session["account"].ToString();
            int row = ((GridViewRow)((LinkButton)sender).NamingContainer).RowIndex;
            string id = GridView1.Rows[row].Cells[1].Text;
            Data_access.DeleteUc(account, id);
            GridView2.DataSourceID = "SqlDataSource1";
        }
    }
}