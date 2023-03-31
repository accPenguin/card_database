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

public partial class 套牌 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

   
        
        productbusiness gb = new productbusiness();
        this.goodList.DataSource = gb.gettaopai();
        this.goodList.DataBind();
    }
}