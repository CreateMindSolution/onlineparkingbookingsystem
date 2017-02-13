package main;

import DB.Database;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Yashfaa
 */
public class UserDAO {

    public static int registerUser(UserRegistration user, String sql){
       
        int i = 0;
        
        Connection con = Database.getConnection();
        
        try {
            
            PreparedStatement pst = con.prepareStatement(sql);
            
            pst.setString(1, user.getfName());
            pst.setString(2, user.getlName());
            pst.setString(3, user.getuName());
            pst.setString(4, user.getPwd());
            pst.setInt(5, user.getBday());
            pst.setString(6, user.getBmonth());
            pst.setString(7, user.getByear());
            pst.setString(8, user.getGender());
            pst.setString(9, user.getMobile());
            pst.setString(10, user.getEmail());
            
            i = pst.executeUpdate();
                        
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            
            if(con != null){
                try {
                    
                    con.close();
                    
                } catch (SQLException ex) {
                    Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return i;
    }
    
    public static ResultSet loginUser(UserRegistration user, String sql){
        
        ResultSet rs = null;
        
        Connection con = Database.getConnection();
        
        try {
            
            PreparedStatement pst = con.prepareStatement(sql);
            
            pst.setString(1, user.getuName());
            pst.setString(2, user.getPwd());
            
            rs = pst.executeQuery();           
                
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
//        finally{
//            
//            if(con != null){
//                try {
//                    
//                    con.close();
//                    
//                } catch (SQLException ex) {
//                    Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
//                }
//            }
//        }
        return rs;
    }
}
