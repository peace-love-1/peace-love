
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _20200709
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }


        //author:林玉琴；
        //create date:20200710
        //description:登录界面，成功则跳转至主页面，不成功则提示错误信息
        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text.Trim();//获取到文本框中的用户名
            string pwd = TextBox2.Text;//获取到文本框中的密码
            //连接数据库字段
            string sqlcoon = "Data Source=.;Initial Catalog=students;Integrated Security=True";
            string sql = string.Format("select count(*) from student where account=@account and password=@password_");//查询是否有该条记录，根据账户密码
            SqlParameter[] par =
                {
                new SqlParameter("@account",name),new SqlParameter("@password_",pwd)
            };

            using (SqlConnection con = new SqlConnection(sqlcoon))//SqlConnection连接，用using释放连接
            {
                using (SqlCommand com = new SqlCommand(sql, con))//SqlCommand连接，用using释放连接

                {
                    com.Parameters.AddRange(par);
                    //打开连接
                    con.Open();

                    int resert = Convert.ToInt32(com.ExecuteScalar());
                    //关闭连接
                    //con.Close();
                    //释放连接
                    // con.Dispose();
                    if (resert > 0)
                    {
                        Server.Transfer("Mainpage.aspx");//进入主页面
                    }
                    else
                    {
                        Label1.Text = "用户名或密码错误！";

                    }
                }
            }          
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("zhuce.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Server.Transfer("wangjimima.aspx");
        }
    }
}