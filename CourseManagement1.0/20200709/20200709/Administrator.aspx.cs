using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

//author:林玉琴；
//create date:20200717
//update date:20200717
//description:管理员界面，可以修改选课状态（同意、拒绝），可以对课程信息进行多条件的筛选查询

namespace _20200709
{
    public partial class Administrator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetData();
        }

        protected void GetData()
        {
            string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["sqlcon"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            //SqlConnection con = new SqlConnection();        //定义数据库连接对象
            //con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;  //定义数据库连接字符串
            SqlCommand com = new SqlCommand();              //定义数据库操作命令对象
            com.Connection = conn;                           //连接数据库
            com.CommandText = "select account as 用户名,courseid as 课头号,state as 状态 from uc"; //定义执行查询操作的sql语句
            SqlDataAdapter da = new SqlDataAdapter();       //创建数据适配器对象
            da.SelectCommand = com;                         //执行数据库操作命令
            DataSet ds = new DataSet();                     //创建数据集对象
            da.Fill(ds, "uc");                        //填充数据集
            GridView1.DataSource = ds.Tables["uc"].DefaultView;//设置gridview控件的数据源为创建的数据集ds
            GridView1.DataBind();                           //绑定数据库表中数据

        }

        //同意
        protected void Button1_Click1(object sender, EventArgs e)
        {
            string account = Session["account"].ToString(); 
            int row = ((GridViewRow)((Button)sender).NamingContainer).RowIndex;
            string courseid = GridView1.Rows[row].Cells[1].Text;
            string state = "成功";
            //Data_access.InsertUc(account, id, state);
            Data_access.UpdateState(state, courseid);
           // GridView1.DataSourceID = "SqlDataSource4";
            Button button = (Button)GridView1.Rows[row].FindControl("Button1");
            button.Enabled = false;
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        void CustomersGridView_RowCommand(Object sender, GridViewCommandEventArgs e)
        {

        }

        public static DataTable SelectAll()
        {
            SqlConnection con = Data_access.GetConnection();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("select * from uc", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            dt.Load(sdr);
            return dt;
        }



        protected void Button5_Click(object sender, EventArgs a)
        {
            Label10.Text = "";
            string c = "";    //定义空字符串，用来条件查询
            if (TextBox6.Text != "")
            {
                c += "courseid like '%" + TextBox6.Text + "%'";
                if (TextBox5.Text != "")
                {
                    c += " and account like '%" + TextBox5.Text + "%'";
                    if (RadioButtonList1.SelectedIndex != -1)
                    {
                        c += RadioButtonList1.Text == "未审核" ? " and state='待审核'" : " and state in ('成功','失败')";
                    }
                }
                else
                {
                    if (RadioButtonList1.SelectedIndex != -1)
                    {
                        if (RadioButtonList1.Text == "未审核")
                        {
                            c += " and state='待审核'";
                        }
                        if (RadioButtonList1.Text == "已审核")
                        {
                            c += " and state in ('成功','失败')";
                        }
                    }
                }
            }
            else
            {
                if (TextBox5.Text != "")
                {
                    c += "account like '%" + TextBox5.Text + "%'";
                    if (RadioButtonList1.SelectedIndex != -1)
                    {
                        if (RadioButtonList1.Text == "未审核")
                        {
                            c += " and state='待审核'";
                        }
                        if (RadioButtonList1.Text == "已审核")
                        {
                            c += " and state in ('成功','失败')";
                        }
                    }
                }
                else
                {
                    if (RadioButtonList1.SelectedIndex != -1)
                    {
                        if (RadioButtonList1.Text == "未审核")
                        {
                            c += "state='待审核'";
                        }
                        if (RadioButtonList1.Text == "已审核")
                        {
                            c += "state in ('成功','失败')";
                        }
                    }
                }

                /* if (TextBox4.Text != "")
                //if(Label10.Text!="")
                 {
                     if (TextBox5.Text != "" || RadioButtonList1.SelectedIndex != -1)
                     //if (Label12.Text != "" || Label11.Text != "")
                         c += " and courseid like '%" + TextBox4.Text + "%'";
                     else
                         c += " courseid like '%" + TextBox4.Text + "%'";
                 }
                 if (TextBox5.Text != "")
                 //if(Label11.Text!="")
                 {
                     if (TextBox4.Text != "" || RadioButtonList1.SelectedIndex != -1)
                         c += " and account like '%" + TextBox5.Text + "%'";
                     else
                         c += " account like '%" + TextBox5.Text + "%'";
                 }
                 if (RadioButtonList1.SelectedIndex != -1)
                 {
                     if (TextBox4.Text == "" && TextBox5.Text == "")
                         c += " state='待审核'";
                     else
                     {
                         if (RadioButtonList1.Text == "未审核")
                         {
                             c += "and state='待审核'";
                         }
                         if (RadioButtonList1.Text == "已审核")
                         {
                             c += "and state in ('成功','拒绝')";
                         }
                     }
                 }


                 /*if (RadioButtonList2.Text == "按用户名排序")
                 {
                     a= "account";
                 }
                 else if (RadioButtonList2.Text == "按课头号排序")
                 {
                     a= "courseid";
                 }
                 else if (RadioButtonList2.Text == "按审核状态排序")
                 {
                     a= "state";
                 }*/


                Label10.Text = c;
                DataView dv = new DataView(SelectAll()); //调用查询方法
                dv.RowFilter = c;                                       //设置过滤器（按条件查找）
                string b = RadioButtonList3.SelectedIndex > 0 ? "DESC" : "ASC";
                dv.Sort = "courseid " + b;                            //使结果依照pID字段降序排列
                GridView1.DataSource = dv;                              //设定数据源
                GridView1.DataBind();                                   //绑定数据源
                TextBox6.Text = "";
                TextBox5.Text = "";
                RadioButtonList1.SelectedIndex = -1;
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Server.Transfer("Administrator2.aspx");
        }
    }
}