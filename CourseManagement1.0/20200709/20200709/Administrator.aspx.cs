using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _20200709
{
    //author:彭子晨
    //create date:2020/07/21  description:管理员审核选课申请界面
    public partial class Administrator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSourceID = "SqlDataSource1";
            }
        }

        public void IsButtonEnabled()
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                string state = GridView1.Rows[i].Cells[3].Text;
                if (state != "待审核")
                {
                    LinkButton linkbutton1 = (LinkButton)GridView1.Rows[i].FindControl("LinkButton1");
                    LinkButton linkbutton2 = (LinkButton)GridView1.Rows[i].FindControl("LinkButton2");
                    linkbutton1.Enabled = false;
                    linkbutton2.Enabled = false;
                }
            }
        }//遍历gridview1中的选课申请，若是选课状态为失败或成功，则同意和拒绝按钮不可用

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = TextBox1.Text;
            string account = TextBox2.Text;
            if (id == "")
            {
                if (account == "")
                {
                    GridView1.DataSourceID = "";
                    GridView1.DataSourceID = "SqlDataSource1";
                }
                else
                {
                    GridView1.DataSourceID = "";
                    GridView1.DataSourceID = "SqlDataSource3";
                }
            }
            else
            {
                if(account == "")
                {
                    GridView1.DataSourceID = "";
                    GridView1.DataSourceID = "SqlDataSource2";
                }
                else
                {
                    GridView1.DataSourceID = "";
                    GridView1.DataSourceID = "SqlDataSource4";
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            int row = ((GridViewRow)((LinkButton)sender).NamingContainer).RowIndex;
            string id = GridView1.Rows[row].Cells[0].Text;
            string account = GridView1.Rows[row].Cells[2].Text;
            string state = "待审核";
            Data_access.UpdateUc1(account, id, state);

            string datasourceid = GridView1.DataSourceID;
            GridView1.DataSourceID = "";
            GridView1.DataSourceID = datasourceid;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            int row = ((GridViewRow)((LinkButton)sender).NamingContainer).RowIndex;
            string id = GridView1.Rows[row].Cells[0].Text;
            string account = GridView1.Rows[row].Cells[2].Text;
            string state = "待审核";
            Data_access.UpdateUc2(account, id, state);

            string datasourceid = GridView1.DataSourceID;
            GridView1.DataSourceID = "";
            GridView1.DataSourceID = datasourceid;
        }

        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            IsButtonEnabled();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("AddCourse.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Server.Transfer("DeleteCourse.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Server.Transfer("UpdateCourse.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Server.Transfer("Login.aspx");
        }
    }
}