using System;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Text.RegularExpressions;


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
            TextBox1.Attributes["onblur"] = ClientScript.GetPostBackEventReference(TextBox1, null);
            TextBox2.Attributes["onblur"] = ClientScript.GetPostBackEventReference(TextBox2, null);
            TextBox3.Attributes["onblur"] = ClientScript.GetPostBackEventReference(TextBox3, null);
            TextBox5.Attributes["onblur"] = ClientScript.GetPostBackEventReference(TextBox5, null);
        }

        private bool accountcheck = false;//检测用户名是否小于15位
        private bool passwordcheck = false;//检测密码是否小于20位
        private bool CanRegister = false;//检测是否重名
        private bool ecodecheck = false;//检测邮箱验证码是否正确

        //用户名判断
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            if (TextBox1.Text.Length < 16)
            {
                NameCheck();
                if (CanRegister)
                {
                    accountcheck = true;
                    Label4.Text = "√";
                }
            }
            else
                Label4.Text = "用户名长度不得大于15位";
        }

        //密码长度限制
        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            if (TextBox2.Text.Length < 21)
                Label5.Text = "√";
            else
                Label5.Text = "密码长度不得大于20位";
        }

        //判断两次密码是否一致
        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            if (TextBox3.Text == TextBox2.Text)
            {
                passwordcheck = true;
                Label6.Text = "√";
            }
            else
                Label6.Text = "两次密码不一致";
        }

        //判断用户名是否已存在
        private void NameCheck()
        {
            string account = TextBox1.Text;
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
        }

        //进行注册
        private void Register()
        {
            string account = TextBox1.Text;
            string password = TextBox2.Text;
            string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["sqlcon"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
           // if (passwordcheck && CanRegister && accountcheck)
           // {
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
           // }
            /*CanRegister = CanRegister && accountcheck && passwordcheck;
            if (CanRegister)
            {
                Response.Redirect("Login.aspx");
                //Server.Transfer("Login.aspx");
            }*/
        }

        //注册按钮
        protected void Button3_Click(object sender, EventArgs e)
        {
            /*if (ecodecheck)
            {
                Label12.Text = "验证码对";
                if (passwordcheck)
                {
                    Label12.Text += ",密码对";
                    if (accountcheck)
                        Label12.Text += ",用户名对";
                }
            } */
            if (Label4.Text== "√"&& Label5.Text == "√"&& Label6.Text == "√"&& Label10.Text == "√"&& Label11.Text == "√")
                Register();
            else
                Label7.Text = "注册失败";
        }

        //返回到登录界面
        protected void Button4_Click(object sender, EventArgs e)
        {
            Server.Transfer("Login.aspx");//返回到登录页面
        }


        //生成6位数字和大写字母的验证码
        private string CreateRandom(int codelengh)
        {
            int rep = 0;
            string str = string.Empty;
            long num2 = DateTime.Now.Ticks + rep;
            rep++;
            Random random = new Random(((int)(((ulong)num2) & 0xffffffffL)) | ((int)(num2 >> rep)));
            for (int i = 0; i < codelengh; i++)
            {
                char ch;
                int num = random.Next();
                if ((num % 2) == 0)
                {
                    ch = (char)(0x30 + ((ushort)(num % 10)));
                }
                else
                {
                    ch = (char)(0x41 + ((ushort)(num % 0x1a)));
                }
                str = str + ch.ToString();
            }
            return str;
        }

        //判断邮箱格式是否正确
        private bool EmailCheck()
        {
            string emailStr = @"^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,5})+$";
            Regex emailReg = new Regex(emailStr);
            if (emailReg.IsMatch(TextBox4.Text.Trim()))
                return true;
            else
                Label10.Text = "邮箱格式错误";
                return false;
        }

        //发送邮件
        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                if (EmailCheck())
                {
                    MailMessage mailMessage = new MailMessage();//实例化一个发送邮件类。             
                    mailMessage.From = new MailAddress("1457380863@qq.com");//发件人邮箱地址             
                    mailMessage.To.Add(new MailAddress(TextBox4.Text));//收件人邮箱地址。             
                    mailMessage.Subject = "验证码";//邮件标题。
                    string emailcode = CreateRandom(6);//生成的六位验证码   
                    Session["emailcode"] = emailcode;
                    mailMessage.Body = "你的验证码是" + emailcode;//邮件内容。             
                    SmtpClient client = new SmtpClient();//实例化一个SmtpClient类。
                    client.Host = "smtp.qq.com";//使用的是qq邮箱，所以是smtp.qq.com（587），如果你使用的是126邮箱，那么就是smtp.126.com（25）。             
                    client.EnableSsl = true;//使用安全加密连接。            
                    client.UseDefaultCredentials = false;//不和请求一块发送。             
                    client.Credentials = new NetworkCredential("1457380863@qq.com", "knegpkmxbuqeheij");//验证发件人身份            
                    client.Send(mailMessage);//发送
                    Label10.Text = "√";//发送成功
                }
            }
            catch
            {
                Label10.Text = "发送失败";
            }
        }

        //判断邮箱验证码是否正确
        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
            if (Session["emailcode"].ToString().ToUpper() == TextBox5.Text.ToUpper())
            {
                Label11.Text = "√";
                ecodecheck = true;
            }
            else
            {
                Label11.Text = "验证码错误";
                ecodecheck = false;
            }
        }
    }
}