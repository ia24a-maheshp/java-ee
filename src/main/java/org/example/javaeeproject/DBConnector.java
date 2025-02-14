package org.example.javaeeproject;

import java.sql.*;

public class DBConnector {

    private static Connection con = null;

    private static final String CONNECT_STRING = "jdbc:mysql://localhost:3306/contact_db?user=root";

    private Connection openConnection() {
        try {
            con = DriverManager.getConnection(CONNECT_STRING);
            con.setAutoCommit(false);// disable automatic commits
            return con;
        } catch (Exception e) {
            System.out.println("No connection to " + CONNECT_STRING);
            e.printStackTrace();
        }
        return null;
    }

    public static Connection getConnection() {
        if (con == null) {
            con = new DBConnector().openConnection();
        }
        return con;
    }

    public static void closeResources(PreparedStatement preparedStatement, ResultSet resultSet) {
        try {
            if (resultSet != null) {
                resultSet.close();
            }
            if (preparedStatement != null) {
                preparedStatement.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
