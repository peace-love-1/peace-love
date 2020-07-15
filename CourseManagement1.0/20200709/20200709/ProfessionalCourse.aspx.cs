using System;

namespace _20200709
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Server.Transfer("Login.aspx");
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedIndex == 0)
            {
                Panel3.Visible = true;
                Panel4.Visible = false;
            }
            else
            {
                Panel3.Visible = false;
                Panel4.Visible = true;
            }
        }
    }
}