
using System;
using System.Data.SqlClient;
using System.Web.UI;


//author:林玉琴；
//create date:20200710
//update date:20200711
//description:登录界面，成功则跳转至主页面，不成功则提示错误信息
namespace _20200709
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string account = TextBox1.Text;
            string password = TextBox2.Text;
            string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["sqlcon"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from users where account=@account and password=@password", conn);
                cmd.Parameters.AddWithValue("@account", account);
                cmd.Parameters.AddWithValue("@password", password);
                cmd.Parameters[0].Value = account;
                cmd.Parameters[1].Value = password;
                int count = (int)cmd.ExecuteScalar();
                if (count == 1)
                {
                    Response.Redirect("Mainpage.aspx");
                }
                else
                {
                    //Response.Write("<script>alert('用户名或密码错误')</script>");
                    Label3.Text = "用户名或密码错误";
                }
            }
            catch
            {
                //Response.Write("<script>alert('登录异常')</script>");
                Label3.Text = "登录异常";
            }

            finally
            {
                conn.Close();
            }
            /* try
             {
                 string name = TextBox1.Text.Trim();//获取到文本框中的用户名
                 string pwd = TextBox2.Text;//获取到文本框中的密码
                 //连接数据库字段
                 //string sqlcoon = "Data Source=.;Initial Catalog=students;Integrated Security=True";
                 string sqlcoon = System.Configuration.ConfigurationManager.ConnectionStrings["sqlcon"].ToString();
                 string sql = string.Format("select count(*) from users where account=@account and password=@password");//查询是否有该条记录，根据账户密码
                 SqlParameter[] par ={new SqlParameter("@account",name),new SqlParameter("@password",pwd)};//SqlParameter对象在C#中获取存储过程的返回值。利用Add方法和AddRange方法来使用。
                 using (SqlConnection con = new SqlConnection(sqlcoon))//SqlConnection连接，用using释放连接
                 {
                     using (SqlCommand com = new SqlCommand(sql, con))//SqlCommand连接，用using释放连接
                     {
                         com.Parameters.AddRange(par);                      
                         con.Open();//打开连接
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
                             Label3.Text = "用户名或密码错误";
                         }
                     }
                 }
             }
             catch
             {
                 Label3.Text = "登录异常";
             }   */
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("Register.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Server.Transfer("Findpassword.aspx");
        }


    }
}