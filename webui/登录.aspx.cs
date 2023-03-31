using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Business;
using DataAccess;
using Entity;

public partial class 登录 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        string username = this.txtUsername.Text;
        string password = this.txtPassword.Text;
        usersbusiness ub = new usersbusiness();
        DataTable dt = ub.getUsersByName(username);
        if (dt.Rows.Count == 0)//表里没有数据 用户名不存在
        {
            this.txtUsername.Text = "";
            this.txtPassword.Text = "";
            Response.Write("<script>alert('用户名不存在');</script>");
        }
        else
        {
            if (password == ("" + dt.Rows[0][2]))//如果密码和数据库里的密码一致 登录成功
            {
                string id = "" + dt.Rows[0][0];
                Users ue = ub.getUsersById(id);
                Session["userid"] = id;
                Session["uname"] = ue.Username;

                Session["users"] = ue;
                Response.Redirect("产品.aspx");
            }
            else
            {
                this.txtPassword.Text = "";
                Response.Write("<script>alert('密码错误');</script>");
            }
        }
    }
}