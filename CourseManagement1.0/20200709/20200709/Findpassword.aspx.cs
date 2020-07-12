using System;

namespace _20200709
{
    public partial class wangjimima : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Login.aspx");
        }
    }
}