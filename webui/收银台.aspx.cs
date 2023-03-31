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

public partial class 收银台 : System.Web.UI.Page
{
    public double total = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] == null)
        {
            Response.Redirect("登录.aspx");
        }
        string id = (string)Session["userid"];
        CartBusiness2 cb = new CartBusiness2();
        DataTable dt = cb.getprize();
    

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            total += Double.Parse("" + dt.Rows[i]["price"]);
        }

        Label1.Text = total.ToString();
        DataTable dt2 = cb.getyouhui();
        double jiner;
        jiner =  Double.Parse("" + dt2.Rows[0]["jiner"]);
        Label2.Text = jiner.ToString();
        double xianjia;
        xianjia = total - jiner;
        Label3.Text = xianjia.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string usersid = Session["userid"].ToString();
        CartBusiness2 cb = new CartBusiness2();
        DataTable dt = cb.getCartByID(usersid);
 

        //1、插入订单表
     
        ordersbusiness ob = new ordersbusiness();
        Orders oe = new Orders();
        oe.Ordertime = DateTime.Now.ToString();
        oe.Address = txtTime.Text.ToString();
      

        Random rd = new Random();
        oe.Ordersid = rd.Next().ToString();
        oe.Contact = txtContact.Text;
        oe.Username = Session["uname"].ToString();
        

        int flag = rd.Next();
        for (int i = 3200; flag>i; i++)
        {
            flag = flag / 2;
        }
        CartBusiness2 cb2 = new CartBusiness2();
        DataTable dt3 = cb.getprize();


        for (int i = 0; i < dt.Rows.Count; i++)
        {
            total += Double.Parse("" + dt.Rows[i]["price"]);
        }

        Label1.Text = total.ToString();
        DataTable dt5 = cb.getyouhui();
        double jiner;
        jiner = Double.Parse("" + dt5.Rows[0]["jiner"]);
        Label2.Text = jiner.ToString();
        double xianjia;
        xianjia = total - jiner;
        Label3.Text = xianjia.ToString();

        oe.Total = xianjia.ToString();
        ob.InsertOrders(oe);

        //2、插入订单详情表

        
            Details details = new Details();
            details.Detailsid = rd.Next().ToString();//
            details.Ordersid = rd.Next().ToString();//oid
            details.Goodsid = rd.Next().ToString();//pid
            details.ZhuangTai = "已下单";
            details.PingJia = "还没有填写评价";
           
            details.Num = "3";//nums
       
            details.Price = xianjia.ToString();//prize
            detailbusiness db = new detailbusiness();
           int flag1 =  db.InsertDetails(details);
           if (flag1 > 0)
           {
               Response.Write("<script>alert('订单详情成功生成')</script>");
           }
        
           
        Response.Redirect("订单.aspx");

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}