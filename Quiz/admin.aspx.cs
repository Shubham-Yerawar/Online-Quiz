using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;
using System.Data;

namespace Quiz
{
    public partial class admin : System.Web.UI.Page
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
            catch (Exception er) { Console.Write("error" + er); }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                String username = TextBox1.Text;
                String pass = TextBox2.Text;
                OracleCommand cmd = new OracleCommand();
                cmd.CommandText = " SELECT * from login where username='" + username + "'";
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                OracleDataReader dr = cmd.ExecuteReader();
                dr.Read();
                String pwd = dr.GetString(2);
                if (pass.Equals(pwd))
                {
                    Console.Write("admin con success");
                    Response.Redirect("add.aspx");
                }
                else
                {
                   
                    TextBox2.Text = "";
                    Response.Write("invalid username or passowrd");
                }
            }
            catch (Exception err) {
                Console.Write("error" + err);
            }
        }
    }
}