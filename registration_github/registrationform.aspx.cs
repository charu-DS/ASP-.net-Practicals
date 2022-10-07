using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace registration8416
{
    public partial class registrationform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("success.aspx");
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int len = args.Value.Length;
            if(len>=8 && len <= 13)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }

        }
    }
}