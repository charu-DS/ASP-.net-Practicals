using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace newdiscon
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);


            SqlDataAdapter da = new SqlDataAdapter("Select*from student", conn);
            DataSet ds = new DataSet();
            da.Fill(ds,"StudentDetails");
            GridView1.DataSource = ds;
            GridView1.DataBind();



        }
    }
}