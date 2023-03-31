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

public partial class admin_ListAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            adminbusiness adminBusiness = new adminbusiness();
           
            this.GridView1.DataSource = adminBusiness.getALLAdmin();
            
            this.GridView1.DataBind();
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
        string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
      
        adminbusiness adminBusiness = new adminbusiness();
       
        adminBusiness.DeleteAdminById(id);
       
        Response.Redirect("ListAdmin.aspx");
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        adminbusiness adminBusiness = new adminbusiness();
      
        this.GridView1.DataSource = adminBusiness.getALLAdmin();
    
        this.GridView1.DataBind();
    }
}
