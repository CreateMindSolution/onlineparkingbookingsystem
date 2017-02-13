package DB;

import java.sql.*;

/**
 *
 * @author Yashfaa
 */
public class Database {
    
    public static Connection getConnection(){
        Connection con = null;
        try{
            
            String driver = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/simriz";
            String user = "root";
            String pass = "root";
            
            Class.forName(driver);
            con = DriverManager.getConnection(url, user, pass);
                       
        }catch(ClassNotFoundException | SQLException e){
            System.out.println("Database.getConnection() Error"+e.getMessage());
            
        }
         return con;   
    }
    
}
