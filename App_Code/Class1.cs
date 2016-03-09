using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>

/// </summary>
public class Class1
{
    SqlConnection connect;
    public Class1()
    {
        connect = new SqlConnection(ConfigurationManager.ConnectionStrings["ShowTrackerConnectionString"].ToString());
    }
    public DataTable GetArtists()
    {
        string sql = "SELECT ArtistKey, ArtistName FROM Artist";
        DataTable tbl = null;
        SqlCommand cmd = new SqlCommand(sql, connect);
        try
        {
            tbl = ProcessQuery(cmd);
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return tbl;
    }
    private DataTable ProcessQuery(SqlCommand cmd)
    {
        DataTable table = new DataTable();
        SqlDataReader reader;
        try
        {
            connect.Open();
            reader = cmd.ExecuteReader();
            table.Load(reader);
            connect.Close();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return table;
    }
}