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
public class Sachmuon132 {
    private int id;
    private Date ngaymuon;
    private Date ngaytra;
    private Date ngaydatra;
    private int trangthai;
    private Sach132 sach132;
    public Sachmuon132() {
    }

    public Sachmuon132(int id, Date ngaymuon, Date ngaytra, Date ngaydatra, int trangthai, Sach132 sach132) {
        this.id = id;
        this.ngaymuon = ngaymuon;
        this.ngaytra = ngaytra;
        this.ngaydatra = ngaydatra;
        this.trangthai = trangthai;
        this.sach132 = sach132;
    }

    public Date getNgaydatra() {
        return ngaydatra;
    }

    public void setNgaydatra(Date ngaydatra) {
        this.ngaydatra = ngaydatra;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getNgaymuon() {
        return ngaymuon;
    }

    public void setNgaymuon(Date ngaymuon) {
        this.ngaymuon = ngaymuon;
    }

    public Date getNgaytra() {
        return ngaytra;
    }

    public void setNgaytra(Date ngaytra) {
        this.ngaytra = ngaytra;
    }

    public int getTrangthai() {
        return trangthai;
    }

    public void setTrangthai(int trangthai) {
        this.trangthai = trangthai;
    }

    public Sach132 getSach132() {
        return sach132;
    }

    public void setSach132(Sach132 sach132) {
        this.sach132 = sach132;
    }
    
    
}
