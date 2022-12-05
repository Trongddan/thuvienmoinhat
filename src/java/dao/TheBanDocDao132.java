/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import connect.DbConnect;
import entity.Phieumuon132;
import entity.Thanhvien;
import entity.Thebandoc132;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class TheBanDocDao132 extends Dao {

    PreparedStatement ps = null;
    ResultSet rs = null;

    public Thebandoc132 getTheBanDoc(String mavach) {
        String query = "Select * from tblThebandoc132 where mavach=?";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, mavach);
            rs = ps.executeQuery();
            while (rs.next()) {
                Thebandoc132 tbd = new Thebandoc132(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getDate(8),
                        rs.getInt(9)
                );
                if (tbd != null) {
                    return tbd;
                } else {
                    return null;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

//    public ArrayList<Phieumuon132> getListPhieumuon(String id) {
//        String query = "Select * from tblPhieumuon132 where tblThebandoc132id=?";
//        ArrayList<Phieumuon132> listPhieumuon132 = new ArrayList<>();
//        try {
//            ps = conn.prepareStatement(query);
//            ps.setString(1, id);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                Phieumuon132 phieumuon = new Phieumuon132(
//                        rs.getInt(1),
//                        rs.getString(2),
//                        rs.getDate(3),
//                        rs.getInt(4),
//                        rs.getInt(5)
//                );
//                listPhieumuon132.add(phieumuon);
//               
//            }
//            
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return listPhieumuon132;
//    }

  
}
