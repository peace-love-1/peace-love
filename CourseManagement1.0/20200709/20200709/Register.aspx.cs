using System;
using System.Data.SqlClient;


//author:林玉琴；
//create date:20200711
//update date:20200712
//description:注册界面，用户名、密码设置正确则注册成功，跳转至登录页面

namespace _20200709
{
    public partial class zhuce : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private bool accountcheck = false;//检测用户名是否小于6位
        private bool passwordcheck = false;//检测密码是否小于9位
        private bool CanRegister = false;//检测是否重名

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            if (TextBox1.Text.Length < 7)
            {
                Label4.Text = "√";
                accountcheck = true;
            }
            else
                Label4.Text = "用户名长度不得大于6位";
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            if (TextBox2.Text.Length < 10)
                Label5.Text = "√";
            else
                Label5.Text = "密码长度不得大于9位";
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            if (TextBox3.Text == TextBox2.Text)
            {
                Label6.Text = "√";
                passwordcheck = true;
            }
            else
                Label6.Text = "两次密码不一致";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //Server.Transfer("Login.aspx");
            string account = TextBox1.Text;
            string password = TextBox2.Text;
            string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["sqlcon"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from users where account=@account", conn);//查询用户名是否已存在
                cmd.Parameters.AddWithValue("@account", account);
                cmd.Parameters[0].Value = account;
                int count = (int)cmd.ExecuteScalar();
                if (count > 0)
                {
                    Label4.Text = "用户名已存在";
                }
                else
                {
                    CanRegister = true;
                }
            }
            catch
            {
                Label7.Text = "检测重名异常";
            }
            finally
            {
                conn.Close();
            }

            if (accountcheck && passwordcheck && CanRegister)
            {
                try
                {
                    conn.Open();
                    string strIns = "insert into users(account, password) values(@account, @password)";//往数据表中插入数据
                    SqlCommand cmd = new SqlCommand(strIns, conn);
                    cmd.Parameters.AddWithValue("@account", account);
                    cmd.Parameters.AddWithValue("@password", password);
                    cmd.Parameters["@account"].Value = account;
                    cmd.Parameters["@password"].Value = password;
                    cmd.ExecuteNonQuery();
                    //Label7.Text = "hh";
                }
                catch
                {
                    Label7.Text = "注册异常";
                }
                finally
                {
                    conn.Close();
                    Response.Redirect("Login.aspx");//注册成功则跳转到登录页面
                }
                //Server.Transfer("Login.aspx");
            }
            /*CanRegister = CanRegister && accountcheck && passwordcheck;
            if (CanRegister)
            {
                Response.Redirect("Login.aspx");
                //Server.Transfer("Login.aspx");
            }*/
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Server.Transfer("Login.aspx");//返回到登录页面
        }
    }
}