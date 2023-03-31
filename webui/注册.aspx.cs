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

public partial class 注册 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.txtUsername.Text = "";
            this.txtPassword.Text = "";
            this.txtContact.Text = "";
            this.txtEmail.Text = "";
            this.txtAddress.Text = "";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Users users = new Users();

        Random rd = new Random();
    
        users.Usersid = rd.Next().ToString();
        users.Username = txtUsername.Text.Trim();
        users.Password = txtPassword.Text.Trim();
        users.Contact = txtContact.Text.Trim();
        users.Email = txtEmail.Text.Trim();
        users.Address = txtAddress.Text.Trim();
        usersbusiness usersBusiness = new usersbusiness();
        int i = usersBusiness.InsertUsers(users);
        if (i > 0)
        {
            Response.Write("<script>alert('注册成功');location.href='登录.aspx'</script>");
        }
       
    }
}