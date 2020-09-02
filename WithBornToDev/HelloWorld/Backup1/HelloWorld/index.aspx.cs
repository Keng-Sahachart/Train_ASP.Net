using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelloWorld
{
    public partial class index : System.Web.UI.Page
    {
        int y = 999;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("XXX");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            div1.Style["background-color"] = "red";
            div1.Style["font-size"] = "40px";

            string url = "ShowData_ByGet.aspx?" + txt_Name.ID + "=" + txt_Name.Text + "&" + txt_Last.ID + "=" + txt_Last.Text;

            Response.RedirectPermanent(url); // redirect ไปหน้าใหม่

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            HttpCookie ck_Name = new HttpCookie("ck_Name");
            HttpCookie ck_LastName = new HttpCookie("ck_LastName");

            ck_Name.Value = txt_ck_Name.Text;
            ck_LastName.Value = txt_ck_LastName.Text;

            Response.SetCookie(ck_Name);
            Response.SetCookie(ck_LastName);

            Response.RedirectPermanent("ShowData_ByCookie.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.RedirectPermanent("ChatRoom.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["Name"] = txt_ss_Name.Text;
            Session["LastName"] = txt_ss_LastName.Text;

            //Response.RedirectPermanent("ShowData_BySession.aspx");
            Server.Transfer("ShowData_BySession.aspx");
        }
    }
}