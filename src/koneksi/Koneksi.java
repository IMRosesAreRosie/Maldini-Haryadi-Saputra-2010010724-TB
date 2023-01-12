/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package koneksi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author maldi
 */
public class Koneksi {
    private final String url = "jdbc:mysql://localhost:3306/projectpbo_pesawat";
    private final String user = "root";
    private final String pass = "";
    
    public static Connection getConnection() {
        Connection connection = null;
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/projectpbo_pesawat";
        String user = "root";
        String password = "";
        if (connection == null) {
            try {
                Class.forName(driver);
                connection = DriverManager.getConnection(url, user, password);
                System.out.println("Koneksi Berhasil");
            } catch (ClassNotFoundException | SQLException error) {
                System.out.println("Error"+error.toString());
            }

        }
        return connection;
    }
    public static void main(String[] args) {
        Koneksi.getConnection();
    }
}
