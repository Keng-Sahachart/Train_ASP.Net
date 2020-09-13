using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace shopingCartWorkshop
{
    public partial class Product : System.Web.UI.Page
    {
        SqlSvr sqlSvr;
        protected void Page_Load(object sender, EventArgs e)
        {
            sqlSvr = new SqlSvr(Config.connString);
            sqlSvr.Connect();
            QryPrd();
        }
        
        void QryPrd()
        {
            DataTable dtPdr = new DataTable();
            dtPdr = sqlSvr.QryDt("select * from product");
            gv_prd.DataSource = dtPdr;
            gv_prd.DataBind();
        }

        protected void gv_prd_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Add2Cart")
            {
                string ProductId = e.CommandArgument.ToString();
                DataTable dtCart = null;
                DataRow drCartItem = null;

                if (Session["Cart"] == null)
                { // ถ้าไม่มี cart ให้สร้าง ขึ้นมาก่อน กำหนด column ให้เรียบร้อย
                    dtCart = new DataTable();
                    dtCart.Columns.Add("ProductId");
                    dtCart.Columns.Add("Qty");
                    Session["Cart"] = dtCart;   // บันทึกเป็น session ให้เรียบร้อย
                }

                /* ถ้ามี table อยู่แล้ว 
                 * ให้ get ออกมา แล้ว บันทึก item ใหม่ลงไป
                    หรือถ้ามี item อยู่แล้ว ให้ update ลงไป
                 */
                dtCart = (DataTable)Session["Cart"];

                drCartItem = dtCart.Select($"ProductId='ProductId'")[0];
                if (drCartItem == null)
                {
                    drCartItem["ProductId"] = ProductId;
                    drCartItem["Qty"] = 1;
                    dtCart.Rows.Add(drCartItem);
                }
                else
                {

                }

            }
        }

     
    }
}