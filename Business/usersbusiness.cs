using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess;
using Entity;
using System.Data;

namespace Business
{
   public  class usersbusiness
    {
        public int InsertUsers(Users users) // 插入数据方法 
        {

            string sqlText = "insert into tb_user  values('" + users.Usersid + "' ,'" + users.Username + "' , '" + users.Password + "' , '" + users.Contact + "' , '" + users.Email + "' , '" + users.Address  + "' )";
            //TODO 升级成更安全的参数传递
            int i = DataBaseAccess.ExecuteSql(sqlText);
            return i;
        }

        public int DeleteUsersById(string id)  // 通过主键删除数据 
        {

            string sqlText = "delete from tb_user where uid = '" + id + "'";

            int i = DataBaseAccess.ExecuteSql(sqlText);
            return i;
        }

        public int UpdateUsers(Users users) //更新数据 
        {
            string sqlText = "update tb_user set  uname = '" + users.Username + "' ,  password = '" + users.Password +  "' ,  tel = '" + users.Contact + "' ,  email = '" + users.Email + "' ,  address = '" + users.Address + "'";

            int i = DataBaseAccess.ExecuteSql(sqlText);
            return i;
        }

        public DataTable getALLUsers() //查询全部数据 
        {
            string sqlText = "select * from tb_user ";

            DataTable dt = DataBaseAccess.GetDataSet(sqlText);
            return dt;
        }

        public Users getUsersById(string id) //按主键查询 
        {
            string sqlText = "select * from tb_user  where uid = '" + id + "'";

            DataTable dt = DataBaseAccess.GetDataSet(sqlText);
            Users users = new Users();
            if (dt.Rows.Count > 0)
            {
                users.Usersid = "" + dt.Rows[0][0];
                users.Username = "" + dt.Rows[0][1];
                users.Password = "" + dt.Rows[0][2];
                users.Contact = "" + dt.Rows[0][3];
                users.Email = "" + dt.Rows[0][4];
                users.Address = "" + dt.Rows[0][5];
               
            }
            return users;
        }
        public DataTable getUsersByName(string val)
        {
            string sqlText = "select * from tb_user where uname = '" + val + "'";

            DataTable dt = DataBaseAccess.GetDataSet(sqlText);
            return dt;
        }
    }
}
