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

        protected void gv_prd_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //*** Picture ***//
                Image imgPicture = (Image)e.Row.FindControl("imgPicture");
                if ((imgPicture != null))
                {
                    imgPicture.ImageUrl = "img/" + (string)DataBinder.Eval(e.Row.DataItem, "Picture");
                }

                //*** ProductID ***//
                Label lblProductID = (Label)e.Row.FindControl("lblProductID");
                if ((lblProductID != null))
                {
                    lblProductID.Text = DataBinder.Eval(e.Row.DataItem, "ProductID").ToString();
                }

                //*** ProductName ***//
                Label lblProductName = (Label)e.Row.FindControl("lblProductName");
                if ((lblProductName != null))
                {
                    lblProductName.Text = (string)DataBinder.Eval(e.Row.DataItem, "ProductName");
                }

                //*** Price ***//
                Label lblPrice = (Label)e.Row.FindControl("lblPrice");
                if ((lblPrice != null))
                {
                    lblPrice.Text = DataBinder.Eval(e.Row.DataItem, "Price").ToString();
                }

                //*** AddToCart ***//
                LinkButton lnkAddToCart = (LinkButton)e.Row.FindControl("lnkAddToCart");
                if ((lnkAddToCart != null))
                {
                    lnkAddToCart.Text = "Add";
                    lnkAddToCart.CommandName = "Add2Cart";
                    lnkAddToCart.CommandArgument = DataBinder.Eval(e.Row.DataItem, "ProductID").ToString();
                }

            }
        }
    }
}