using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess;
using Entity;
using System.Data;

namespace Business
{
    public class adminbusiness
    {
        public int InsertAdmin(Admin admin) // 插入数据方法 
        {

            string sqlText = "insert into tb_admin  values('" + admin.Adminid + "' ,'" + admin.adminname + "' , '" + admin.Password + "' , '"  + admin.Tel + "' )";

            int i = DataBaseAccess.ExecuteSql(sqlText);
            return i;
        }

        public int DeleteAdminById(string id)  // 通过主键删除数据 
        {

            string sqlText = "delete from tb_admin where aid = '" + id + "'";

            int i = DataBaseAccess.ExecuteSql(sqlText);
            return i;
        }

        public int UpdateAdmin(Admin admin) //更新数据 
        {
            string sqlText = "update tb_admin set  uname = '" + admin.adminname + "' ,  password = '" + admin.Password +  "' ,  tel = '" + admin.Tel + "'  where aid = '" + admin.Adminid + "'";

            int i = DataBaseAccess.ExecuteSql(sqlText);
            return i;
        }

        public DataTable getALLAdmin() //查询全部数据 
        {
            string sqlText = "select * from tb_admin ";

            DataTable dt = DataBaseAccess.GetDataSet(sqlText);
            return dt;
        }

        public Admin getAdminById(string id) //按主键查询 
        {
            string sqlText = "select * from tb_admin  where aid = '" + id + "'";

            DataTable dt = DataBaseAccess.GetDataSet(sqlText);
            Admin admin = new Admin();
            if (dt.Rows.Count > 0)
            {
                admin.Adminid = "" + dt.Rows[0][0];
                admin.adminname = "" + dt.Rows[0][1];
                admin.Password = "" + dt.Rows[0][2];
                admin.Tel= "" + dt.Rows[0][3];
               //数据绑定要改
            }
            return admin;
        }

        public DataTable ExistAdmin(string username)
        {
            string s = "select * from tb_admin where aname='" + username + "'";
            DataTable dt = DataBaseAccess.GetDataSet(s);
            return dt;
        }
    }
}
