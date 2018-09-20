using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace THLTW
{
    public partial class SaveFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpPostedFile file = Request.Files["file"];
            String path = HttpContext.Current.Server.MapPath(@"~/App_Data/" + file.FileName);
            file.SaveAs(path);
            Response.Redirect("FileExplorer");
            Response.End();
        }
    }
}