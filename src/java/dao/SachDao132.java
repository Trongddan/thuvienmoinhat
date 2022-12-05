/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static dao.Dao.conn;
import entity.Dausach132;
import entity.Sach132;
import entity.Sachmuon132;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class SachDao132 extends Dao{
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Sach132 getSach(String mavach) throws SQLException {
        String query = "SELECT * FROM `tblsach132` INNER JOIN tbldausach132 ON tblsach132.tblDausach132id = tbldausach132.Id WHERE tblsach132.mavach=?"; 
        try {
            String ma=mavach.toUpperCase();
            ps = conn.prepareStatement(query);
            ps.setString(1,ma);
            rs = ps.executeQuery();  
            Sach132 sach132 = new Sach132();
            while (rs.next()) {
                Dausach132 dausach132 = new Dausach132();
                dausach132.setTen(rs.getString("ten"));
                dausach132.setTacgia(rs.getString("tacgia"));
                dausach132.setNamxuatban(rs.getDate("namxuatban"));
                
                sach132.setId(rs.getInt("tblsach132.id"));
                sach132.setMavach(rs.getString("mavach"));
                sach132.setDausach132(dausach132);
            }

                if (sach132!= null) {
                    return sach132;
                } else {
                    return null;
                }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }
}
