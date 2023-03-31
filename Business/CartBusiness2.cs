using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess;
using Entity;
using System.Data;
namespace Business
{
    public class CartBusiness2
    {
        public int InsertCart(Cart cart) // 插入数据方法 参数是Cart
        {

            string sqlText = "insert into tb_cart  values('" + cart.Cid + "' ,'" + cart.Name + "' , '" + cart.Pid + "' , '" + cart.Pname + "' , '" + cart.Price + "' , '" + cart.Nums + "' , '" + cart.Photo+ "' )";
     
            int i = DataBaseAccess.ExecuteSql(sqlText);
            return i;
        }

        public int DeleteCartById(string id)  // 通过主键删除数据 参数是主键
        {

            string sqlText = "delete from tb_cart where cid = '" + id + "'";

            int i = DataBaseAccess.ExecuteSql(sqlText);
            return i;
        }

        public int UpdateCart(Cart cart) //更新数据 参数是Cart
        {
            string sqlText = "update tb_cart set  pname = '" + cart.Name + "' ,  pid = '" + cart.Pid + "' ,  price = '" + cart.Price + "' ,  nums = '" + cart.Nums + "'  where cid = '" + cart.Cid + "'";

            int i = DataAccess.DataBaseAccess.ExecuteSql(sqlText);
            return i;
        }

        public DataTable getCartByID(string val)
        {
            string sqlText = "select * from tb_cart where name = '" + val + "'";
            DataTable dt = DataBaseAccess.GetDataSet(sqlText);
            return dt;
           
        }

        public DataTable getprize()
        {
            string sqlText = "select price from tb_cart";
            DataTable dt = DataBaseAccess.GetDataSet(sqlText);
            return dt;
            
        }

        public DataTable getyouhui()
        {
            string sqlText = "select * from tb_youhui";
            DataTable dt = DataBaseAccess.GetDataSet(sqlText);
            return dt;
            //
        }

    }
}
