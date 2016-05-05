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
    public partial class Campaign1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var qs = HttpContext.Current.Request.QueryString;
            int clientID = 0, destinationNumber = 0, campaing = 0;

            int.TryParse(qs["cid"], out clientID);
            int.TryParse(qs["value"], out destinationNumber);
            int.TryParse(qs["campaign"], out campaing);

            if (clientID != 0 && destinationNumber != 0 && campaing != 0)
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["campaignsCnnString"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand(@"UPDATE ClientCampaign SET CampaignID = @campaing, Replied = 1, ResponseDataKey = @value, ResponseDate = getdate() WHERE ClientID = @cid", conn);
                    cmd.CommandType = System.Data.CommandType.Text;

                    //parameters
                    cmd.Parameters.Add(new SqlParameter()
                    {
                        ParameterName = "campaing",
                        DbType = System.Data.DbType.Int16,
                        Value = campaing
                    });

                    cmd.Parameters.Add(new SqlParameter()
                    {
                        ParameterName = "value",
                        DbType = System.Data.DbType.Int16,
                        Value = destinationNumber
                    });

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
                        throw new Exception(string.Format("Update campaign info for client with ID {0} failed", clientID), excep);
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