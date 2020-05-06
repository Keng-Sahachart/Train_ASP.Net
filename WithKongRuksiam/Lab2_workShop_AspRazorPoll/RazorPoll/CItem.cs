using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RazorPoll
{
    public class CItem
    {
        /* บันทึกการแก้ปัญหา 2020/04/05
         * key  ต้องเป็นตัวพิมพ์เล็ก ตาม คู่มือการใช้งาน
         *  https://morrisjs.github.io/morris.js/donuts.html 
         * วนตรงนี้เป็นวัน หาสาเหตุ debug ดูหลายๆ ตัว ทั้งเปิด pj ต้นแบบของคุณ kong และ pj ของเรา จนพบว่า คู่มือของ morris ระบุว่าต้องใช้ ตัวพิมพ์เล็กเป็น key
         * และ JsonConvert.SerializeObject จะเอาไป convert เป็น key และ value
        */

        public String label { get; set; }
        public String value { get; set; }
    }
}