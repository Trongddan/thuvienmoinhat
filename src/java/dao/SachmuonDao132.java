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
import entity.Sachmuon132;
import entity.Thanhvien;
import java.sql.Array;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class SachmuonDao132 extends Dao {

    PreparedStatement ps = null;
    ResultSet rs = null;

    public ArrayList<Sachmuon132> getSachmuon(String id) throws SQLException {
        String query = "SELECT * FROM `tblsachmuon132` INNER JOIN tblphieumuon132 ON tblphieumuon132.Id=tblsachmuon132.tblPhieumuon132id INNER JOIN tblsach132 ON tblsachmuon132.tblSach132id=tblsach132.Id INNER JOIN tbldausach132 ON tbldausach132.Id=tblsach132.tblDausach132id WHERE tblphieumuon132.tblThebandoc132id=?";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            ArrayList<Sachmuon132> listSachmuon = new ArrayList<>();
            while (rs.next()) {
                Dausach132 dausach132 = new Dausach132();
                dausach132.setTen(rs.getString("ten"));

                Sach132 sach132 = new Sach132();
                sach132.setDausach132(dausach132);
                sach132.setMavach(rs.getString("mavach"));

                Sachmuon132 sachmuon132 = new Sachmuon132();
                sachmuon132.setSach132(sach132);
                sachmuon132.setNgaymuon(rs.getDate("ngaymuon"));
                sachmuon132.setNgaydatra(rs.getDate("ngaydatra"));
                sachmuon132.setTrangthai(rs.getInt("trangthai"));

                listSachmuon.add(sachmuon132);
            }

            if (listSachmuon != null) {
                return listSachmuon;
            } else {
                return null;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }

    public boolean checkSachmuon(String Sachid) throws SQLException {
        String query = "SELECT * FROM tblsachmuon132 WHERE tblsachmuon132.tblSach132id=? AND tblsachmuon132.trangthai=0";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, Sachid);
            rs = ps.executeQuery();
            Sachmuon132 sachmuon132 = new Sachmuon132();
            while (rs.next()) {

                sachmuon132.setNgaymuon(rs.getDate("ngaymuon"));
                sachmuon132.setNgaydatra(rs.getDate("ngaydatra"));
                sachmuon132.setTrangthai(rs.getInt("trangthai"));
            }

            if (sachmuon132 != null) {
                return false;
            } else {
                return true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;

    }
        public void luuSachmuon(ArrayList<Sach132> listSach,int pmID) throws SQLException {
        String query2 = "INSERT INTO tblsachmuon132(ngaymuon,ngaytra,trangthai,tblPhieumuon132id,tblSach132id) VALUE(?,?,?,?,?)";
        try {

            for (Sach132 i : listSach) {
                ps = conn.prepareStatement(query2);
                ps.setDate(1,java.sql.Date.valueOf(java.time.LocalDate.now()));
                ps.setDate(2,java.sql.Date.valueOf(java.time.LocalDate.now().plusMonths(1)) );
                ps.setInt(3, 0);
                ps.setInt(4,pmID);
                ps.setInt(5, i.getId());
                int k = ps.executeUpdate();

            }
            
//            System.out.println(generatedKey);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
