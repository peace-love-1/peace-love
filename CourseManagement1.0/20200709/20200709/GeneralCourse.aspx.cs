﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace _20200709
{

    //author:彭子晨
    //create date:2020/07/16  description:通用课选课界面，可以进行查询课程、选课操作
    //update date:2020/07/17  description:增加选课申请表功能
    public partial class GeneralCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSourceID = "SqlDataSource1";
                GridView2.DataSourceID = "SqlDataSource4";
            }
        }

        //根据课程名或教师名进行查询
        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            if (name == "")
            {
                GridView1.DataSourceID = "";
                GridView1.DataSourceID = "SqlDataSource1";
            }
            else 
            {
                SqlDataReader Sdr = Data_access.QueryGcourseCname(name);
                if (Sdr.HasRows)
                {
                    GridView1.DataSourceID = "";
                    GridView1.DataSourceID = "SqlDataSource2";
                }
                else
                {
                    GridView1.DataSourceID = "";
                    GridView1.DataSourceID = "SqlDataSource3";
                }
            }
           
        }

        //点击选课按钮，该课程加入选课申请表，同时按钮置为不可用
        protected void Button1_Click1(object sender, EventArgs e)
        {
            string account = Session["account"].ToString();
            int row = ((GridViewRow)((Button)sender).NamingContainer).RowIndex;
            string id = GridView1.Rows[row].Cells[1].Text;
            string state = "待审核";
            Data_access.InsertUc(account, id,state);
            GridView2.DataSourceID = "SqlDataSource4";
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
            GridView2.DataSourceID = "SqlDataSource4";
        }
    }
}