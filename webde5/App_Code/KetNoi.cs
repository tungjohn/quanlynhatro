using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;


/// <summary>
/// Summary description for KetNoi
/// </summary>
public class KetNoi
{
	public KetNoi()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    static public SqlDataReader rs;
    static public SqlDataReader rs3;
    SqlConnection cn;
    SqlCommand cmd;
    string ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    public void DataOpen()
    {
        cn = new SqlConnection(ConnectionString);
        cn.Open();
    }
    public SqlDataReader ExcuteData(string query)
    {
        cmd = new SqlCommand(query);
        cmd.CommandType = CommandType.Text;
        cmd.Connection = cn;
        SqlDataReader rs1 = cmd.ExecuteReader();
        cmd.Dispose();
        return rs1;
    }
    public void Excute(string query)
    {
        cmd = new SqlCommand(query);
        cmd.CommandType = CommandType.Text;
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
    }
    public void ExecuteScalar(string query)
    {
        cmd = new SqlCommand(query);
        cmd.CommandType = CommandType.Text;
        cmd.Connection = cn;
        cmd.ExecuteScalar();
        cmd.Dispose();
    }
}
