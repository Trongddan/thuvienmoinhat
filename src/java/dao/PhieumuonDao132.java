/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static dao.Dao.conn;
import entity.Dausach132;
import entity.Phieumuon132;
import entity.Sach132;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class PhieumuonDao132 extends Dao {

    PreparedStatement ps = null;
    ResultSet rs = null;

    public void luuPhieumuon(Phieumuon132 pm) throws SQLException {
        String query = "INSERT INTO tblphieumuon132(maphieu,ngayin,soluong,tblThebandoc132id) VALUE(?,?,?,?)";
        try {
            //thuc hien luu phieu muon va tra ve id cua ban ghi vua luu
            ps = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, pm.getMaphieu());
            ps.setDate(2, pm.getNgayin());
            ps.setInt(3, pm.getSoluong());
            ps.setInt(4, pm.getThebandoc().getId());
            int r = ps.executeUpdate();
            rs = ps.getGeneratedKeys();
            int generatedKey = 0;
            if (rs.next()) {
                generatedKey = rs.getInt(1);
            }
            pm.setId(generatedKey);
            //thuc hien luu sach muon
            pm.setArrSachMuon(pm.getListsach());
//            System.out.println(generatedKey);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
