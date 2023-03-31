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

public partial class cartt : System.Web.UI.Page
{
    public double total;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
        {
            Response.Redirect("登录.aspx");
        }
       
        string id = (string)Session["userid"];

        CartBusiness2 cb = new CartBusiness2();
       
        DataTable ds = cb.getCartByID(id);
   
        for (int i = 0; i < ds.Rows.Count; i++)
        {
            total += Double.Parse("" + ds.Rows[i]["price"]) * Double.Parse("" + ds.Rows[i]["nums"]);
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        
        if (Session["userid"] == null)
        {
            Response.Redirect("登录.aspx");
        }
        string id = (string)Session["userid"];
        GridView1.PageIndex = e.NewPageIndex;
        CartBusiness2 cartBusiness = new CartBusiness2();
        DataTable ds = cartBusiness.getCartByID(id);
        this.GridView1.DataSource = ds;
        this.GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        CartBusiness2 cartBusiness = new CartBusiness2();
        cartBusiness.DeleteCartById(id);
        //TODO 
        Response.Redirect("cartt.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("产品详情.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        CartBusiness2 cb = new CartBusiness2();
        cb.getyouhui();
        Response.Write("<script>alert('领券成功，快去收银台使用');</script>");


    }
}