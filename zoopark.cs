using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Data.sqlClient;
    

namespace zoopark
{
    public class zoopark
    {
        SqlConnection sqlConnection = new SqlConnection(@"Data Source = NEWLIFE\SQLEXPRESS; Initial Catalog=zoopark; Integrated Security=True");

        public void openConnection(){
            if(sqlConnection.State == System.Data.ConnectionSate.Closed){
                sqlConnection.Open();
            }
        }
        public void closeConnection(){
            if(sqlConnection.State == System.Data.ConnectionSate.Closed){
                sqlConnection.Close();
            }
        }
        public SqlConnection getConnection(){
            return sqlConnection;
        }

    }
}