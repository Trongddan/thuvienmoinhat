/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Admin
 */
public class Sach132 {
    private int id;
    private String mavach;
    private Dausach132 dausach132;

    public Sach132() {
    }

    
    public Sach132(int id, String mavach, Dausach132 dausach132) {
        this.id = id;
        this.mavach = mavach;
        this.dausach132 = dausach132;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMavach() {
        return mavach;
    }

    public void setMavach(String mavach) {
        this.mavach = mavach;
    }

    public Dausach132 getDausach132() {
        return dausach132;
    }

    public void setDausach132(Dausach132 dausach132) {
        this.dausach132 = dausach132;
    }
    
    
}
