package com.restaurant.backendCarrito.connection;

import com.restaurant.backendCarrito.vo.Menu;
import com.restaurant.backendCarrito.vo.Platos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Martin
 */
public class PlatoDAO {

    public void insertPlato(Platos plato) throws SQLException {
        String sql = "INSERT INTO plato (nombrePlato, tipoPlato, descripcionPlato, precio, linkImg) "
                + "VALUES (?, ?, ?, ?, ?)";

        try (Connection connection = Conexion.getConnection(); PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {

            ps.setString(1, plato.getNombrePlato());
            ps.setString(2, plato.getTipoPlato());
            ps.setString(3, plato.getDescripcionPlato());
            ps.setDouble(4, plato.getPrecio());
            ps.setString(5, plato.getLinkImg());

            ps.executeUpdate();

            try (ResultSet rs = ps.getGeneratedKeys()) {
                if (rs.next()) {
                    plato.setIdPlato(rs.getInt(1));
                }
            }
        }
    }

    public Menu cargarMenu() throws SQLException {
        Menu menu = new Menu();
        List<Platos> entrada = new ArrayList<>();
        List<Platos> principal = new ArrayList<>();
        List<Platos> postre = new ArrayList<>();
        List<Platos> bebida = new ArrayList<>();

        String sql = "SELECT * FROM plato";

        try (Connection connection = Conexion.getConnection(); Statement stmt = connection.createStatement(); ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Platos plato = new Platos();
                plato.setIdPlato(rs.getInt("idPlato"));
                plato.setNombrePlato(rs.getString("nombrePlato"));
                plato.setTipoPlato(rs.getString("tipoPlato"));
                plato.setDescripcionPlato(rs.getString("descripcionPlato"));
                plato.setPrecio(rs.getDouble("precio"));
                plato.setLinkImg(rs.getString("linkImg"));

                switch (plato.getTipoPlato()) {
                    case "entrada" ->
                        entrada.add(plato);
                    case "fondo" ->
                        principal.add(plato);
                    case "postre" ->
                        postre.add(plato);
                    case "bebida" ->
                        bebida.add(plato);
                    default -> {
                        System.out.println("⚠ Tipo de plato desconocido: " + plato.getTipoPlato());
                    }
                }
            }
        }

        menu.setEntrada(entrada);
        menu.setPrincipal(principal);
        menu.setPostre(postre);
        menu.setBebida(bebida);
        
        System.out.println("Datos obtenidos de BD : ".concat(menu.toString()));

        return menu;
    }
}
