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

public partial class 订单详情 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
        {
            Response.Redirect("登录.aspx");
        }
        string id = Request["ordercode"];

        detailbusiness odb = new detailbusiness();
       
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        if (Session["userid"] == null)
        {
            Response.Redirect("登录.aspx");
        }
        string id = Request["ordercode"];
        GridView1.PageIndex = e.NewPageIndex;
        detailbusiness odb = new detailbusiness();
        GridView1.DataSource = odb.getDetailsById(id);
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        detailbusiness dts = new detailbusiness();
        string aa;
            aa = "订单完成";
        dts.fahuo(aa);
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        detailbusiness ds = new detailbusiness();
        string bb;

        bb = TextBox2.Text.ToString();
        ds.pingjia(bb);
    }
}