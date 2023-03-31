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

public partial class admin_AddGoods : System.Web.UI.Page
{

    protected void submit_Click(object sender, EventArgs e)
    {
       
        Product goods = new Product();
        Random rd = new Random();
        goods.Goodsid = rd.Next().ToString();
        goods.Goodsname = this.txtGoodsname.Text;
        goods.Image = "00";//TODO
        
      
        goods.Price = this.txtPrice.Text;
        
        goods.Storage = this.txtStorage.Text;
        goods.Sellnum = "0";
      
    
        
        productbusiness goodsBusiness = new productbusiness();
       
        goodsBusiness.InsertGoods(goods);
        
        Response.Redirect("AddGoods.aspx");
    }
    
}
