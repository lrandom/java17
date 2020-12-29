/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demoshop.dals;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Lrandom
 */
public class DBConnection {
    public static final String DB_URL = "jdbc:mysql://localhost:3306/shoes_shop";
    public static final String DB_USER = "root";
    public static final String DB_PASS = "koodinh";

    protected Connection connection;
    public DBConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.connection = DriverManager
                    .getConnection(DB_URL, DB_USER, DB_PASS);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        return this.connection;
    }

    public boolean closeConnection() {
        try {
            if (this.connection != null) {
                this.connection = null;

            }
        } catch (Exception e) {
            return false;
        }
        return true;
    }
}
