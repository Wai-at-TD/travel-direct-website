using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace traveldirectWebForms.campaigns
{
    public partial class Unsubscribe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var qs = HttpContext.Current.Request.QueryString;
            int clientID = 0;

            int.TryParse(qs["cid"], out clientID);

            if (clientID != 0)
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["campaignsCnnString"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand(@"UPDATE Clients SET Subscribed = 0 WHERE ID = @cid", conn);
                    cmd.CommandType = System.Data.CommandType.Text;

                    //parameter
                    cmd.Parameters.Add(new SqlParameter()
                    {
                        ParameterName = "cid",
                        DbType = System.Data.DbType.Int32,
                        Value = clientID
                    });

                    try
                    {
                        conn.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch (Exception excep)
                    {
                        throw new Exception(string.Format("Unsuscription for client with ID {0} failed", clientID), excep);
                    }
                    finally
                    {
                        if (conn.State == System.Data.ConnectionState.Open)
                            conn.Close();
                    }
                }
            }
        }
    }
}