package org.example.javaeeproject;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

    // Method to validate user credentials
    public boolean validateUser(String username, String password) {
        String query = "SELECT Password FROM User WHERE Username = ?";

        Connection conn = DBConnector.getConnection();

        try (
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                String storedPassword = rs.getString("Password");

                // Simple password check (consider using BCrypt for hashing)
                return password.equals(storedPassword);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
