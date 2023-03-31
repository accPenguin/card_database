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

public partial class admin_AddAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        
        Admin admin = new Admin();
        Random rd = new Random();
        admin.Adminid = rd.Next().ToString();
        admin.adminname = this.txtUsername.Text;
        admin.Password = this.txtPassword.Text;
       
        admin.Tel = this.txtContact.Text;
       
  
        adminbusiness adminBusiness = new adminbusiness();
        
        adminBusiness.InsertAdmin(admin);
        Response.Write("<script>alert('管理员添加成功')</script>");
        
    }
}
