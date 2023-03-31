using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
        {
            hlkLogin.Visible = true;
            HlkRegist.Visible = true;
           
            hlkCart.Visible = false;
            hlkOrder.Visible = false;
            lbtnExit.Visible = false;
        }
        else
        {
            hlkLogin.Visible = false;
            HlkRegist.Visible = false;
          
            hlkCart.Visible = true;
            hlkOrder.Visible = true;
            lbtnExit.Visible = true;

        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("productlist.aspx");
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }
    protected void LinkButton1_Click2(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("登录.aspx");
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string url = "查询结果页面.aspx?name=" + this.keyword.Text;
        Response.Redirect(url);
    }
    protected void keyword_TextChanged(object sender, EventArgs e)
    {

    }
}
