/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import dao.TheBanDocDao132;
import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class Thebandoc132 {
    private int id;
    private String ma;
    private String ten;
    private Date ngaysinh;
    private String diachi;
    private String dienthoai;
    private String mavach;
    private Date ngaytao;
    private int tblThanhvien132id;
    private ArrayList<Phieumuon132> dsphieumuon;
    private ArrayList<Phieumuon132> dsphieuphat;
    public Thebandoc132() {
    }

    public Thebandoc132(int id, String ma, String ten, Date ngaysinh, String diachi, String dienthoai, String mavach, Date ngaytao, int tblThanhvien132id) {
        this.id = id;
        this.ma = ma;
        this.ten = ten;
        this.ngaysinh = ngaysinh;
        this.diachi = diachi;
        this.dienthoai = dienthoai;
        this.mavach = mavach;
        this.ngaytao = ngaytao;
        this.tblThanhvien132id = tblThanhvien132id;
    }
//    public ArrayList<Phieumuon132> getListPhieumuon(int id){
//        TheBanDocDao132 tbd = new TheBanDocDao132();
//        return tbd.getListPhieumuon(String.valueOf(id));
//    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMa() {
        return ma;
    }

    public void setMa(String ma) {
        this.ma = ma;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public Date getNgaysinh() {
        return ngaysinh;
    }

    public void setNgaysinh(Date ngaysinh) {
        this.ngaysinh = ngaysinh;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getDienthoai() {
        return dienthoai;
    }

    public void setDienthoai(String dienthoai) {
        this.dienthoai = dienthoai;
    }

    public String getMavach() {
        return mavach;
    }

    public void setMavach(String mavach) {
        this.mavach = mavach;
    }

    public Date getNgaytao() {
        return ngaytao;
    }

    public void setNgaytao(Date ngaytao) {
        this.ngaytao = ngaytao;
    }

    public int getTblThanhvien132id() {
        return tblThanhvien132id;
    }

    public void setTblThanhvien132id(int tblThanhvien132id) {
        this.tblThanhvien132id = tblThanhvien132id;
    }
    
}
