using System.Data.Common;

namespace back_hoteles.Models
{
    public class MySQLConfiguration
    {
        public MySQLConfiguration(string connectionString)
        {
            ConnectionString = connectionString;
        }

        public string ConnectionString { get; set; }
    }
}
