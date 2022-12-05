/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Date;

/**
 *
 * @author Admin
 */
public class Dausach132 {
    private int id;
    private String ma;
    private String ten;
    private String tacgia;
    private Date namxuatban;
    private double gia;
    private int soluong;
    private String mota;

    public Dausach132() {
    }

    public Dausach132(int id, String ma, String ten, String tacgia, Date namxuatban, double gia, int soluong, String mota) {
        this.id = id;
        this.ma = ma;
        this.ten = ten;
        this.tacgia = tacgia;
        this.namxuatban = namxuatban;
        this.gia = gia;
        this.soluong = soluong;
        this.mota = mota;
    }

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

    public String getTacgia() {
        return tacgia;
    }

    public void setTacgia(String tacgia) {
        this.tacgia = tacgia;
    }

    public Date getNamxuatban() {
        return namxuatban;
    }

    public void setNamxuatban(Date namxuatban) {
        this.namxuatban = namxuatban;
    }

    public double getGia() {
        return gia;
    }

    public void setGia(double gia) {
        this.gia = gia;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }
    
    
}
