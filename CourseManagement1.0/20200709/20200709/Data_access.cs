using System.Data.SqlClient;

namespace _20200709
{
    //author:彭子晨
    //create date:2020/07/11  description:用于访问数据库、进行数据操作的封装类 
    //update date:2020/07/12  description:增加对用户表操作的函数
    //update date:2020/07/15  description:增加对基本课程表、专业课视图、通识课视图和用户课程视图操作的函数
    //update date:2020/07/16  description:增加InsertUc函数，向选课表中插入用户名、课头号
    //update date:2020/07/17  description:增加DeleteUc函数，删除选课表中的数据

    //author: 林玉琴
    //update date:2020/07/15 
    //description:修改了查询数据库某数据是否存在的函数 QueryData , 增加了UpdateData修改数据函数

    public class Data_access
    {
        //打开数据库连接
        public static SqlConnection GetConnection()
        {
            SqlConnection connection = new SqlConnection(
                System.Configuration.ConfigurationManager.ConnectionStrings["sqlcon"].ToString());
            connection.Open();
            return connection;
        } 

        //插入新的用户数据，后面可能增加用户权限属性
        public static void InsertUsers(string account, string password)
        {
            using (SqlConnection connection = GetConnection())
            {
                using (SqlCommand cmd = new SqlCommand
                ("insert into users(account,password) values(@account,@password)", connection))
                {
                    cmd.Prepare();
                    cmd.Parameters.AddWithValue("@account", account);
                    cmd.Parameters.AddWithValue("@password", password); //使用参数，防止sql注入攻击
                    cmd.ExecuteNonQuery();
                }
            }
        } 

        //修改数据表中某数据
        public static string UpdateData(string a,string b)
        {
            string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["sqlcon"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("update users set password='" + a + "' where @email='" + b + "'", conn);
                cmd.Parameters.AddWithValue("@email", b);
                cmd.ExecuteNonQuery();
                return "1";
            }
            catch
            {
                return "2";
            }
            finally
            {
                conn.Close();
            }
        }


        //查询某数据是否存在，a表示要查询的数据，b表示表中所在列的名字
        public static string QueryData(string a,string b)
        {
            //a = b;
            string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["sqlcon"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from users where " + b + "=@"+b, conn);//查询邮箱是否已存在
                cmd.Parameters.AddWithValue("@"+b, a);
                cmd.Parameters["@"+b].Value = a;
                int count = (int)cmd.ExecuteScalar();
                if (count > 0)
                {
                    return "1";
                }
                else
                {
                    return "2";//不存在
                }
            }
            catch
            {
                return "3";//异常
            }
            finally
            {
                conn.Close();
            }
        } 


        //查询用户密码是否输入正确
        public static bool QueryPassword(string account, string password)
        {
            using (SqlConnection connection = GetConnection())
            {
                string stm = "select * from users where account=@account";
                using (SqlCommand cmd = new SqlCommand(stm, connection))
                {
                    cmd.Parameters.AddWithValue("@account", account);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.GetString(1).Equals(password))
                        {
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                }
            }
        }   






        public static void InsertCourses(string id, string cname, float credit, string remainmax, string tname,
           string schoolyear, int schoolterm, string timeandplace, string remark,
           string academy, string major, string type,int grade)
        {
            using (SqlConnection connection = GetConnection())
            {
                using (SqlCommand cmd = new SqlCommand
                ("insert into bcourses(id,cname,credit,[remain/max],tname,schoolyear,schoolterm,timeandplace,remark，academy，major,type,grade)" +
                " values(@id,@cname,@credit,@[remain/max],@tname，@schoolyear,@schoolterm,@timeandplace,@remark,@academy,@major.@type,@grade)", connection))
                {
                    cmd.Prepare();
                    cmd.Parameters.AddWithValue("@id", id);
                    cmd.Parameters.AddWithValue("@cname", cname);
                    cmd.Parameters.AddWithValue("@credit", credit);
                    cmd.Parameters.AddWithValue("@[remain/max]", remainmax);
                    cmd.Parameters.AddWithValue("@tname", tname);
                    cmd.Parameters.AddWithValue("@schoolyear", schoolyear);
                    cmd.Parameters.AddWithValue("@schoolterm", schoolterm);
                    cmd.Parameters.AddWithValue("@timeandplace", timeandplace);
                    cmd.Parameters.AddWithValue("@remark", remark);
                    cmd.Parameters.AddWithValue("@academy", academy);
                    cmd.Parameters.AddWithValue("@major", major);
                    cmd.Parameters.AddWithValue("@type", type);
                    cmd.Parameters.AddWithValue("@grade", grade);
                    cmd.ExecuteNonQuery();
                }
            }
        } //插入爬虫爬取的课程信息

        public static SqlDataReader QueryPcourseMajor(string academy,string major,int grade)
        {
            using (SqlConnection connection = GetConnection())
            {
                string stm = "select * from pcourses where academy=@academy and major=@major and grade=@grade";
                using (SqlCommand cmd = new SqlCommand(stm, connection))
                {
                    cmd.Parameters.AddWithValue("@academy", academy);
                    cmd.Parameters.AddWithValue("@major", major);
                    cmd.Parameters.AddWithValue("@grade", grade);
                    SqlDataReader reader = cmd.ExecuteReader();
                    return reader;
                }
            }
        }//按院系、专业、年级查询专业课课程信息

        public static SqlDataReader QueryPcourseCame(int grade, string cname)
        {
            using (SqlConnection connection = GetConnection())
            {
                string stm = "select * from pcourses where cname=@cname and grade=@grade";
                using (SqlCommand cmd = new SqlCommand(stm, connection))
                {
                    cmd.Parameters.AddWithValue("@cname", cname);
                    cmd.Parameters.AddWithValue("@grade", grade);
                    SqlDataReader reader = cmd.ExecuteReader();
                    return reader;
                }
            }
        }//按年级、课程名查询专业课课程信息

        public static SqlDataReader QueryGcourseCname(string cname)
        {
               SqlConnection connection = GetConnection();
                string stm = "select * from gcourses where cname=@cname";
                using (SqlCommand cmd = new SqlCommand(stm, connection))
                {
                    cmd.Parameters.AddWithValue("@cname", cname);
                    SqlDataReader reader = cmd.ExecuteReader();
                    return reader;
                }
            
        }//按课程名查询通用课课程信息

        public static SqlDataReader QueryGcourseTname(string tname)
        {
            using (SqlConnection connection = GetConnection())
            {
                string stm = "select * from gcourses where tname=@tname";
                using (SqlCommand cmd = new SqlCommand(stm, connection))
                {
                    cmd.Parameters.AddWithValue("@tname", tname);
                    SqlDataReader reader = cmd.ExecuteReader();
                    return reader;
                }
            }
        }//按教师名查询通用课课程信息

        public static SqlDataReader QueryUcourseDate(string schoolyear, int schoolterm)
        {
            using (SqlConnection connection = GetConnection())
            {
                string stm = "select * from ucourses where schoolyear=@schoolyear and schoolterm=@schoolterm";
                using (SqlCommand cmd = new SqlCommand(stm, connection))
                {
                    cmd.Parameters.AddWithValue("@schoolyear", schoolyear);
                    cmd.Parameters.AddWithValue("@schoolterm", schoolterm);
                    SqlDataReader reader = cmd.ExecuteReader();
                    return reader;
                }
            }
        }//按学年、学期查询已选课程

        public static void InsertUc(string account,string id,string state)
        {
            using (SqlConnection connection = GetConnection())
            {
                using (SqlCommand cmd = new SqlCommand
                ("insert into uc(account,courseid,state) values(@account,@courseid,@state)", connection))
                {
                    cmd.Prepare();
                    cmd.Parameters.AddWithValue("@account", account);
                    cmd.Parameters.AddWithValue("@courseid", id);
                    cmd.Parameters.AddWithValue("@state", state);
                    cmd.ExecuteNonQuery();
                }
            }
        }//向选课表中插入用户名、课头号、选课状态

        public static void DeleteUc(string account, string id)
        {
            using (SqlConnection connection = GetConnection())
            {
                using (SqlCommand cmd = new SqlCommand
                ("delete from uc where account=@account and courseid=@courseid", connection))
                {
                    cmd.Parameters.AddWithValue("@account", account);
                    cmd.Parameters.AddWithValue("@courseid", id);
                    cmd.ExecuteNonQuery();
                }
            }
        }//删除选课表中的数据
    }
}