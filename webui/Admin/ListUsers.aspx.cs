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

public partial class admin_ListUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            usersbusiness usersBusiness = new usersbusiness();
            
            this.GridView1.DataSource = usersBusiness.getALLUsers();
           
            this.GridView1.DataBind();
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
      
        usersbusiness usersBusiness = new usersbusiness();
       
        this.GridView1.DataSource = usersBusiness.getALLUsers();
       
        this.GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
        string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        
       usersbusiness usersBusiness = new usersbusiness();
     
        usersBusiness.DeleteUsersById(id);
        
        Response.Redirect("ListUsers.aspx");
    }
}
