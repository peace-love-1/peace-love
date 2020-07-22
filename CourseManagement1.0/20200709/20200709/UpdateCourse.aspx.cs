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
    //create date:2020/07/22  description:管理员修改课程界面

    public partial class UpdateCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = TextBox1.Text;
            SqlDataReader reader = Data_access.QueryCourseId(id);
            while (reader.Read())
            {
                string type = reader.GetString(9);
                if (type == "通识课")
                {
                    Panel2.Visible = false;
                }
                Label1.Text = reader.GetString(0);
                Label2.Text = reader.GetString(9);
                TextBox2.Text = reader.GetString(1);
                TextBox3.Text = reader.GetDecimal(2).ToString();
                TextBox4.Text = reader.GetString(3);
                TextBox5.Text = reader.GetString(4);
                if (type == "专业课")
                {
                    TextBox6.Text = reader.GetString(5);
                    TextBox7.Text = reader.GetString(6);
                }
                TextBox8.Text = reader.GetString(7);
                TextBox9.Text = reader.GetInt32(8).ToString();
                TextBox10.Text = reader.GetString(13);
            }
            reader.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string id = Label1.Text;
            string type = Label2.Text;
            string cname = TextBox2.Text;
            double credit = Convert.ToDouble(TextBox3.Text);
            string tname = TextBox4.Text;
            string academy = TextBox5.Text;
            string schoolyear = TextBox8.Text;
            int schoolterm = Convert.ToInt32(TextBox9.Text);
            string school = TextBox10.Text;

            if (type == "通识课")
            {
                Data_access.UpdateCourses2(id, cname, credit, tname, academy, schoolyear, schoolterm,school);
                Response.Write("<script>alert('修改成功')</script>");
            }
            else if(type == "专业课")
            {
                string major = TextBox6.Text;
                int grade = Convert.ToInt32(TextBox7.Text);
                Data_access.UpdateCourses1(id, cname, credit, tname, academy, major, grade, schoolyear, schoolterm,school);
                Response.Write("<script>alert('修改成功')</script>");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Administrator.aspx");
        }
    }
}