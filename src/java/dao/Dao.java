/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import connect.DbConnect;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Admin
 */
public class Dao {

    public static Connection conn;
    private final String localhost = "localhost";
    private final String dbName = "quanlythuvien";
    private final String user = "root";
    private final String password = "";

    public Dao() {
        if (conn == null) {
            String url = "jdbc:mysql://" + localhost + "/" + dbName;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(url, user, password);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
