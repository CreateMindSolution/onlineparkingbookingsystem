package main;

import DB.Database;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Yashfaa
 */
public class ReserveDAO {

    public static int reserveSpace(Reserve rsv, String sql) {
        int s = 0;

        Connection con = Database.getConnection();

        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setString(1, rsv.getParkingZone());
            pst.setString(2, rsv.getAreaName());
            pst.setString(3, rsv.getStartDate());
            pst.setString(4, rsv.getStartTime());
            pst.setString(5, rsv.getEndDate());
            pst.setString(6, rsv.getEndTime());
            pst.setString(7, rsv.getParkingSpace());
            pst.setString(8, rsv.getStatus());

            pst.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(ReserveDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }

    public static ResultSet searchSpace(Reserve rsv, String sql) {
        ResultSet rs = null;

        Connection con = Database.getConnection();

        try {
            PreparedStatement pst = con.prepareStatement(sql);
            
           // pst.setString(1, rsv.getStatus());
            pst.setString(1, rsv.getStartDate());
            pst.setString(2, rsv.getStartTime());

            rs = pst.executeQuery();

        } catch (SQLException ex) {
            Logger.getLogger(ReserveDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

//    public static boolean status(Reserve rsv, String sql) {
//        
//        boolean result = true;
//        
//        Connection con = Database.getConnection();
//
//        try {
//            PreparedStatement pst = con.prepareStatement(sql);
//            
//            pst.setString(1, rsv.getStatus());
//            pst.setString(2, rsv.getStartDate());
//            pst.setString(3, rsv.getStartTime());
//
//            result = pst.execute();
//            
//        } catch (SQLException ex) {
//            Logger.getLogger(ReserveDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return result;
//    }

}
