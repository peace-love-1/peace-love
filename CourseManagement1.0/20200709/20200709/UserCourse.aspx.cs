using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _20200709
{

    //author:彭子晨
    //create date:2020/07/16   description:已选课程界面，可以进行查询已选课程信息
    //update date:2020/07/17   description:增加撤课功能

    public partial class selected_courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSourceID = "SqlDataSource2";
                
            }
        }

        //按学年、学期查询
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList3.SelectedValue == "全部")
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

        //对已选课程进行撤课
        protected void Button1_Click2(object sender, EventArgs e)
        {
            string account = Session["account"].ToString();
            int row = ((GridViewRow)((Button)sender).NamingContainer).RowIndex;
            string id = GridView1.Rows[row].Cells[0].Text;
            string state = "成功";
            Data_access.DeleteUc(account,id,state);
            if (GridView1.DataSourceID == "SqlDataSource2")
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
}