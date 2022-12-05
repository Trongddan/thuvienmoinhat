/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import dao.PhieumuonDao132;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class Phieumuon132 {
    private int id;
    private String maphieu;
    private Date ngayin;
    private int soluong;
    private Thebandoc132 thebandoc ;
    private ArrayList<Sachmuon132> sachmuon132;

    public Phieumuon132() {
    }

    public Phieumuon132(int id, String maphieu, Date ngayin, int soluong, Thebandoc132 thebandoc, ArrayList<Sachmuon132> sachmuon132) {
        this.id = id;
        this.maphieu = maphieu;
        this.ngayin = ngayin;
        this.soluong = soluong;
        this.thebandoc = thebandoc;
        this.sachmuon132 = sachmuon132;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMaphieu() {
        return maphieu;
    }

    public void setMaphieu(String maphieu) {
        this.maphieu = maphieu;
    }

    public Date getNgayin() {
        return ngayin;
    }

    public void setNgayin(Date ngayin) {
        this.ngayin = ngayin;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public Thebandoc132 getThebandoc() {
        return thebandoc;
    }

    public void setThebandoc(Thebandoc132 thebandoc) {
        this.thebandoc = thebandoc;
    }

    public ArrayList<Sachmuon132> getSachmuon132() {
        return sachmuon132;
    }

    public void setSachmuon132(ArrayList<Sachmuon132> sachmuon132) {
        this.sachmuon132 = sachmuon132;
    }
    public void luuPhieumuon(Phieumuon132 pm,int tbdId, ArrayList<Sach132> listSach) throws SQLException{
        PhieumuonDao132 pmDao = new PhieumuonDao132();
        pmDao.luuPhieumuon(pm,tbdId,listSach);
    }
}
