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

public partial class admin_ListGoods : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          
            productbusiness goodsBusiness = new productbusiness();
            
            this.GridView1.DataSource = goodsBusiness.getALLGoods();
           
            this.GridView1.DataBind();
        }
    }
  
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
       
        productbusiness goodsBusiness = new productbusiness();
      
        this.GridView1.DataSource = goodsBusiness.getALLGoods();
        
        this.GridView1.DataBind();
    }
   
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
       
        string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        
        productbusiness goodsBusiness = new productbusiness();
        
        goodsBusiness.DeleteGoodsById(id);
       
        Response.Redirect("ListGoods.aspx");
    }
   
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        
        string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        
        string url = "EditGoods.aspx?id=" + id;
       
        Response.Redirect(url);
    }
}
