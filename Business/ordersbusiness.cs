using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess;
using Entity;
using System.Data;

namespace Business
{
    public class ordersbusiness
    {
        public int InsertOrders(Orders orders) // 插入数据方法 
        {

            string sqlText = "insert into tb_orders  values('" + orders.Ordersid + "' ,'" + orders.Username + "' , '" + orders.Ordertime + "' , '" + orders.Total + "' , '" + orders.Address + "' , '" + orders.Contact + "' )";

            int i = DataBaseAccess.ExecuteSql(sqlText);
            return i;
        }

        public int DeleteOrdersById(string id)  // 通过主键删除数据 
        {

            string sqlText = "delete from tb_orders where oid = '" + id + "'";

            int i = DataBaseAccess.ExecuteSql(sqlText);
            return i;
        }

        public int UpdateOrders(Orders orders) //更新数据 
        {
            string sqlText = "update tb_orders set  uname = '" + orders.Username + "' ,  total = '" + orders.Total + "' ,  ordertime = '" + orders.Ordertime + "' ,   tel = '" + orders.Contact + "' ,  address = '" + orders.Address +"'";

            int i = DataBaseAccess.ExecuteSql(sqlText);
            return i;
        }

        public DataTable getALLOrders() //查询全部数据 
        {
            string sqlText = "select * from tb_orders ";

            DataTable dt = DataBaseAccess.GetDataSet(sqlText);
            return dt;
        }

        public DataTable getOrdersById(string id) {
            string sqlText = "select * from tb_orders  where name = '" + id + "'";

            DataTable dt = DataBaseAccess.GetDataSet(sqlText);
            Orders orders = new Orders();

            return dt;
        }
    }
}
