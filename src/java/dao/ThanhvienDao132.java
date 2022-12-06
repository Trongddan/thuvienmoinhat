/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import connect.DbConnect;
import entity.Thanhvien;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ThanhvienDao132 extends Dao{

    PreparedStatement ps = null;
    ResultSet rs = null;

    // hàm kiểm tra đăng nhập
    public Thanhvien checkLogin(String tendangnhap, String matkhau) throws SQLException {
        String query = "SELECT * FROM tblthanhvien132 WHERE tendangnhap= ? AND matkhau=?";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, tendangnhap);
            ps.setString(2, matkhau);
            rs = ps.executeQuery();
            while (rs.next()) {
                Thanhvien tv = new Thanhvien(
                        rs.getInt("id"),
                        rs.getString("ma"),
                        rs.getString("ten"),
                        rs.getString("tendangnhap"),
                        rs.getString("matkhau"),
                        rs.getDate("ngaysinh"),
                        rs.getString("diachi"),
                        rs.getString("email"),
                        rs.getString("diachi"),
                        rs.getString("vaitro"),
                        rs.getString("ghichu")
                );
                if (tv != null) {
                    return tv;
                } else {
                    return null;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }
}
