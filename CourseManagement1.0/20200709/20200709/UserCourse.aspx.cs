using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _20200709
{

    //author:彭子晨
    //create date:2020/07/16
    //description:已选课程界面，可以进行查询已选课程信息
    public partial class selected_courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSourceID = "SqlDataSource2";
        }

        //按学年、学期查询
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            GridView1.DataSourceID = "SqlDataSource2";
        }
    }
}