package Model;

import java.sql.*;
import javax.swing.JOptionPane;

public class Conectionn {

    private Conectionn() {

    }
    private static Connection connect;

    private static Conectionn instance;

    public static final String URL = "jdbc:mysql://localhost:3306/mvcaprendiz";

    public static final String USERNAME = "root";

    public static final String PASSWORD = "";

    public Connection connect() {
        try {
            connect = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            return connect;
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Error: " + e);
        }
        return connect;
    }

    public void endConnect() throws SQLException {
        try {
            connect.close();
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Error: " + e);
            connect.close();
        }
    }

    //IMPLEMENTACION PATRON SINGLETON
    public static Conectionn getInstance() {
        if (instance == null) {
            instance = new Conectionn();

        }
        return instance;
    }

}
