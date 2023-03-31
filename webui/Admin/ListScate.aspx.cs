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

public partial class admin_ListScate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        string scateid = GridView1.Rows[e.NewSelectedIndex].Cells[0].Text;
        Response.Redirect("EditArticle.aspx?scateid=" + scateid);
    }
}
