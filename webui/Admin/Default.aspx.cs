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

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.txtUsername.Text = "";
            this.txtPassword.Text = "";
        }
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        adminbusiness ab = new adminbusiness();
        DataTable dt = ab.ExistAdmin(txtUsername.Text);
        if (dt.Rows.Count > 0)
        {
            //2、用户名和密码是否都正确
            if (dt.Rows[0][2].ToString() == txtPassword.Text)
            {
               
             
                Response.Redirect("Main.aspx");
            }
            else
                Response.Write("<script>alert('密码有误')</script>");
        }
        else
            Response.Write("<script>alert('用户名不存在')</script>");

    }
}
