using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;

namespace Quiz
{
    public partial class index : System.Web.UI.Page
    {
        OracleConnection con = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            String connectionString = "Data Source = oracle; User Id=C##quiz; passowrd=quiz;";
            try
            {
                con = new OracleConnection(connectionString);
                con.Open();
            }
            catch (Exception er) { }

           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");
        }
    }
}