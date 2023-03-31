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

public partial class 订单 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
        {
            Response.Redirect("登录.aspx");
        }
        string id = (string)Session["userid"];
         ordersbusiness cb = new ordersbusiness();
    
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        if (Session["userid"] == null)
        {
            Response.Redirect("登录.aspx");
        }
        string id = (string)Session["userid"];
        GridView1.PageIndex = e.NewPageIndex;
        ordersbusiness cartBusiness = new ordersbusiness();
        this.GridView1.DataSource = cartBusiness.getOrdersById(id);
        this.GridView1.DataBind();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            string id = e.CommandArgument.ToString();
         
             ordersbusiness cartBusiness = new ordersbusiness();
            string url = "订单详情.aspx?ordercode=" + id;
            Response.Redirect(url);
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}