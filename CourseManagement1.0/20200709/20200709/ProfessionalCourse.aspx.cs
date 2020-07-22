﻿using System;
using System.Web.UI.WebControls;

namespace _20200709
{

    //author:彭子晨
    //create date:2020/07/16  description:专业课选课界面，可以进行查询课程、选课操作
    //update date:2020/07/17  description:增加选课申请表功能
    //update date:2020/07/18  description:实现选课按钮的可用与不可用之间的转换

    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["account"] = "lyq";
            if (!IsPostBack)
            {
                RadioButtonList1.SelectedIndex = 0;
                Panel3.Visible = true;
                Panel4.Visible = false;
                GridView1.DataSourceID = "SqlDataSource2";
                GridView2.DataSourceID = "SqlDataSource1";               
            }
            Label1.Text = Session["account"].ToString();
        }

        public void IsButtonEnabled()
        {
            Session["account"] = "lyq";
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                string account = Session["account"].ToString();
                string id = GridView1.Rows[i].Cells[0].Text;
                if (Data_access.QueryUc1(account, id))
                {
                    Button button = (Button)GridView1.Rows[i].FindControl("Button1");
                    button.Enabled = false;
                }
            }
        }//遍历gridview1中的课程，若是已经选过课（包括已经选上和选课申请）则选课按钮不可用

        public void IsButtonEnabled2()
        {
            Session["account"] = "lyq";
            for (int i = 0; i < GridView2.Rows.Count; i++)
            {
                string account = Session["account"].ToString();
                string id = GridView2.Rows[i].Cells[0].Text;
                string state = GridView2.Rows[i].Cells[2].Text;
                //if (Data_access.QueryUc2(account, id))
                if (state == "成功")
                {
                    LinkButton linkbutton = (LinkButton)GridView2.Rows[i].FindControl("LinkButton1");
                    linkbutton.Enabled = false;
                }
            }
        }//页面加载时遍历gridview2中的选课申请，若是选课状态为成功，则删除按钮不可用

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

        //选课提交到选课申请表,同时按钮置为不可用
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["account"] = "lyq";
            string account = Session["account"].ToString();
            int row = ((GridViewRow)((Button)sender).NamingContainer).RowIndex;
            string id = GridView1.Rows[row].Cells[0].Text;
            string state = "待审核";
            Data_access.InsertUc(account, id, state);
            GridView2.DataSourceID = "SqlDataSource1";
            Button button = (Button)GridView1.Rows[row].FindControl("Button1");
            button.Enabled = false;
        }

        //删除选课申请表中的申请，同时将该课程选课按钮置为可用
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["account"] = "lyq";
            string account = Session["account"].ToString();
            int row = ((GridViewRow)((LinkButton)sender).NamingContainer).RowIndex;
            string id = GridView2.Rows[row].Cells[0].Text;
            string state = GridView2.Rows[row].Cells[2].Text; ;
            if (state != "成功")
            {
                Data_access.DeleteUc(account, id, state);
            }

            GridView2.DataSourceID = "SqlDataSource1";

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                if (GridView1.Rows[i].Cells[0].Text == id)
                {
                    Button button = (Button)GridView1.Rows[i].FindControl("Button1");
                    button.Enabled = true;
                }
            }//查看当前GridView1上是否有删除按钮对应的课程，有则置选课按钮为可用
        }

        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            IsButtonEnabled();
        }

        protected void GridView2_DataBound(object sender, EventArgs e)
        {
            IsButtonEnabled2();
        }


        protected void Button5_Click(object sender, EventArgs e)
        {
            Server.Transfer("GeneralCourse.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Server.Transfer("ProfessionalCourse.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Server.Transfer("UserCourse.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Server.Transfer("Login.aspx");
        }
    }
}