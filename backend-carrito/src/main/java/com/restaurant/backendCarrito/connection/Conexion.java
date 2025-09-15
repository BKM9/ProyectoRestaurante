package com.restaurant.backendCarrito.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Martin
 */
public class Conexion {
    private static final String URL = "jdbc:mysql://localhost:3306/bdRestauranteElSabo?useSSL=false&serverTimezone=UTC";
    private static final String USER = "root";
    private static final String PASSWORD = "sa123";

    public static Connection getConnection() throws SQLException {
        Connection conn = null;
        try {
            // Cargar el driver (desde JDBC 4 ya no es obligatorio, pero es buena práctica)
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establecer conexión
            conn = (Connection) DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("✅ Conexión exitosa a MySQL");
        } catch (ClassNotFoundException e) {
            System.err.println("❌ Error: No se encontró el Driver de MySQL");
            e.printStackTrace();
        } catch (SQLException e) {
            System.err.println("❌ Error al conectar a MySQL");
            e.printStackTrace();
        }
        return conn;
    }

    public static void close(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
                System.out.println("🔒 Conexión cerrada");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
