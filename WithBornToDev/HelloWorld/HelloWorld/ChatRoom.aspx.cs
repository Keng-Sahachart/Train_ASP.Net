using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelloWorld
{
    public partial class ChatRoom : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["chat"] == null)  // ถ้าไม่มีข้อมูล จะ Error เพราะ Application["chat"] ยังไม่เกิด ยังไม่มีข้อมูล
            {
                Application["chat"] = new List<string>();
            }
            List<string> saveChat = (List<string>)Application["chat"];
            foreach (string x in (List<string>)Application["chat"])
            {
                lst_Chat.Items.Add(x);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            List<string> saveChat = (List<string>)Application["chat"];

            saveChat.Add(txt_Name.Text + " :" + TextBox1.Text);

            Application["chat"] = saveChat;

            Response.RedirectPermanent("ChatRoom.aspx");


        }
    }
}