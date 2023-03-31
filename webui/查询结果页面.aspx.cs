using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Business;
using DataAccess;
using Entity;

public partial class 查询结果页面 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        //Response.Write("<script>alert('" + Request["name"] + "')</script>");
        string name = Request["name"];
        productbusiness gb = new productbusiness();
        this.goodList.DataSource = gb.getGoodsByName(name);
        this.goodList.DataBind();
    }
}