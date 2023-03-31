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
public partial class admin_AddBcate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        productbusiness bb = new productbusiness();
        kabei b = new kabei();
        b.Image = tbID.Text;
      
        bb.Insertkabei(b);
    }
}
