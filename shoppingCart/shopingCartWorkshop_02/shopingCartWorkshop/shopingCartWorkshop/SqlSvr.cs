using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;

namespace shopingCartWorkshop
{
    public class SqlSvr
    {
        OleDbConnection conn = new OleDbConnection();
        //String strCon;

        public SqlSvr(string strCon)
        {
            conn.ConnectionString = strCon;
        }
        public System.Data.ConnectionState Connect()
        {
            conn.Open();
            return conn.State;
        }

        public DataTable QryDt(string sql)
        {
            DataTable dtRes = new DataTable();
            OleDbDataAdapter adapter = new OleDbDataAdapter(sql, conn);
            adapter.Fill(dtRes);
            return dtRes;
        }

    }
}