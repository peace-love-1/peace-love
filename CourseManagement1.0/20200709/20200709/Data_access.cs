using System.Data.SqlClient;

namespace _20200709
{
    //author:彭子晨；
    //create date:2020/07/11
    //update date:2020/07/12
    //description:访问数据库、进行数据操作的封装类
    public class Data_access
    {
        private static SqlConnection GetConnection()
        {
            SqlConnection connection = new SqlConnection(
                System.Configuration.ConfigurationManager.ConnectionStrings["sqlcon"].ToString());
            connection.Open();
            return connection;
        } //打开数据库连接

        private static void InsertUsers(string account, string password)
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
        } //插入新的用户数据，后面可能增加用户权限属性

        private static bool QueryAccount(string account)
        {
            using (SqlConnection connection = GetConnection())
            {
                string stm = "select count(*) from users where account=@account";
                using (SqlCommand cmd = new SqlCommand(stm, connection))
                {
                    cmd.Parameters.AddWithValue("@account", account);
                    //int count = (int)cmd.ExecuteScalar();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
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
        }   //查询用户名是否存在

        private static bool QueryPassword(string account, string password)
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
        }   //查询用户密码是否输入正确

        private static void InsertCourses(string id, string cname, float credit, string remainmax, string tname,
           string title, string attribute, string schoolyear, int schoolterm, string timeandplace, string remark,
           string academy, string major, string type)
        {
            using (SqlConnection connection = GetConnection())
            {
                using (SqlCommand cmd = new SqlCommand
                ("insert into courses(id,cname,credit,[remain/max],tname,title,attribute,schoolyear,schoolterm,timeandplace,remark，academy，major,type)" +
                " values(@id,@cname,@credit,@[remain/max],@tname,@title,@attribute,@schoolyear,@schoolterm,@timeandplace,@remark,@academy,@major.@type)", connection))
                {
                    cmd.Prepare();
                    cmd.Parameters.AddWithValue("@id", id);
                    cmd.Parameters.AddWithValue("@cname", cname);
                    cmd.Parameters.AddWithValue("@credit", credit);
                    cmd.Parameters.AddWithValue("@[remain/max]", remainmax);
                    cmd.Parameters.AddWithValue("@tname", tname);
                    cmd.Parameters.AddWithValue("@title", title);
                    cmd.Parameters.AddWithValue("@attribute", attribute);
                    cmd.Parameters.AddWithValue("@schoolyear", schoolyear);
                    cmd.Parameters.AddWithValue("@schoolterm", schoolterm);
                    cmd.Parameters.AddWithValue("@timeandplace", timeandplace);
                    cmd.Parameters.AddWithValue("@remark", remark);
                    cmd.Parameters.AddWithValue("@academy", academy);
                    cmd.Parameters.AddWithValue("@major", major);
                    cmd.Parameters.AddWithValue("@type", type);
                    cmd.ExecuteNonQuery();
                }
            }
        } //插入爬虫爬取的课程信息

        private static SqlDataReader QueryPcourseMajor(string academy,string major,int grade)
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

        private static SqlDataReader QueryPcourseCame(int grade, string cname)
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

        private static SqlDataReader QueryGcourseCname(string cname)
        {
            using (SqlConnection connection = GetConnection())
            {
                string stm = "select * from gcourses where cname=@cname";
                using (SqlCommand cmd = new SqlCommand(stm, connection))
                {
                    cmd.Parameters.AddWithValue("@cname", cname);
                    SqlDataReader reader = cmd.ExecuteReader();
                    return reader;
                }
            }
        }//按课程名查询通用课课程信息

        private static SqlDataReader QueryGcourseTname(string tname)
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

        private static SqlDataReader QueryUcourseDate(string schoolyear, int schoolterm)
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
    }
}