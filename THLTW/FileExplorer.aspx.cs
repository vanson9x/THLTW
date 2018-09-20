using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace THLTW
{
    public partial class FileExplorer : System.Web.UI.Page
    {
        public String[] files;
        protected void Page_Load(object sender, EventArgs e)
        {
            files = Directory.GetFiles(HttpContext.Current.Server.MapPath(@"~/App_Data/"));
            if (String.IsNullOrEmpty(Request.QueryString["download"])) {
                String listHtml = "<p>DANH SACH FILE</p>";
                foreach (string file in files)
                {
                    string fileName = file.Substring(file.LastIndexOf('\\')).Remove(0, 1);
                    listHtml += String.Format("<a href=\"{0}\">{1}</a></br>",
                        Request.Url + "?download=" + fileName,
                        fileName);
                }
                Response.Write(listHtml);
            } else
            {
                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "attachment; filename=SailBig.jpg");
                Response.WriteFile(files[0]);
            }

            Response.End();
        }
    }
}