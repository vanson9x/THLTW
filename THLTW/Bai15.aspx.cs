using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace THLTW
{
    public partial class Bai15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if(Request.HttpMethod == "POST" || Request.HttpMethod == "GET")
                {
                    var req = Request.HttpMethod == "POST" ? Request.Form : Request.QueryString;
                    String xml = String.Format("<?xml version=\"1.0\" encoding=\"UTF-8\" ?><data><hoten>{0}</hoten><ngaysinh>{1}</ngaysinh><gioitinh>{2}</gioitinh></data>",
                        req["txtHoTen"],
                        req["txtNgaySinh"],
                        req["cbGioitinh"]);
                    Response.ContentType = "text/xml";
                    Response.Write(xml);
                    Response.End();
                } else
                {
                    Response.Write("Không hỗ trợ giao thức này !");
                    Response.End();
                }
            }
        }
    }
}