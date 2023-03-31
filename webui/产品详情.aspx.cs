using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Business;
using DataAccess;
using Entity;

public partial class 产品详情 : System.Web.UI.Page
{

   
    public  void Page_Load(object sender, EventArgs e)
    {
        string goodsid = Request["pid"].ToString();
   
       

        productbusiness gb = new productbusiness();
        Product g = new Product();
        g = gb.getGoodsById(goodsid);

        Label7.Text = g.Goodsid;
        Label1.Text = g.Goodsname;
        Label2.Text = g.Price;
        Label3.Text = g.Sellnum;
        Label5.Text = g.Sellnum;
   
        Image2.ImageUrl = g.Image;
        TextBox1.Text = "1";

    }
    public void LinkButton1_Click(object sender, EventArgs e)
    {
        string goodsid = Request["pid"].ToString();
       
        //详情页面的加入购物车功能
        if (int.Parse(TextBox1.Text) < int.Parse(Label5.Text))
        {
            //可以加入购物车
            if (Session["uname"] != null)
            {
                //合法用户

               

                Cart c = new Cart();
                Random rd = new Random();
                
               c.Cid = rd.Next().ToString();
                c.Name = Session["uname"].ToString();
                c.Pid = Label7.Text;
                c.Pname = "商品"+goodsid;//TODO,,,,,,,,,,,,
                c.Price = Label2.Text;
                c.Nums = TextBox1.Text;
                c.Photo = "~/image/product_pic.png";//TODO,,,,,,,,,,,,,
                Session["allprize"] = 999;

                CartBusiness2 cb = new CartBusiness2();
                int k = cb.InsertCart(c);
                if (k > 0)
                {
                    Response.Redirect("cartt.aspx");
                }
            }
            else
                Response.Write("<script>alert('请先登录')</script>");

        }
        else
            Response.Write("<script>alert('库存不足')</script>");
    }
}