using System.Linq;
using System.Threading.Tasks;
using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace DataAccess
{
    public static class DataBaseAccess
    {
        
        static SqlCommand cmd = null;
        static SqlConnection conn = null;
        static SqlDataAdapter sda = null;
        static SqlDataReader sdr = null;
        static  DataBaseAccess()
        {
            conn = new SqlConnection("Data Source=DESKTOP-LHBG8CT;Initial Catalog=CardDataBase;Integrated Security=True");
            cmd = new SqlCommand();
            cmd.Connection = conn;
            sda = new SqlDataAdapter();
        }
        public static object GetOneData(string sqlText)
        {
            cmd.CommandText = sqlText;
            cmd.CommandType = CommandType.Text;
            conn.Open();
            object i = cmd.ExecuteScalar();
            conn.Close();
            return i;
        }
        public static DataTable GetDataSet(string sqlText)
        {
            cmd.CommandText = sqlText;
            cmd.CommandType = CommandType.Text;
            DataSet ds = new DataSet();
            sda.SelectCommand = cmd;
            sda.Fill(ds, "t");
            return ds.Tables["t"];
        }
        public static int ExecuteSql(string sqlText)
        {
            cmd.CommandText = sqlText;
            cmd.CommandType = CommandType.Text;
            conn.Open();
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            return i;
        }
    }
}

