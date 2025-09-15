package com.restaurant.backendCarrito.connection;

import com.restaurant.backendCarrito.vo.PedidoDelivery;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Martin
 */
public class PedidoDeliveryDAO {

    public String pagarPedido(String numPedido) {
        try (Connection connection = Conexion.getConnection()) {
            String sql = "UPDATE pedidoDelivery SET cancelado = ? WHERE numPedido = ?";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setString(1, "P");
                ps.setString(2, numPedido);
                int rows = ps.executeUpdate();

                if (rows > 0) {
                    return "Se realizo el pago del pedido : " + numPedido;
                } else {
                    return "No se encontró el pedido con numPedido=" + numPedido;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(PedidoDeliveryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "No se pudo actualziar estado";
    }

    public String insertPedido(PedidoDelivery pedido) throws SQLException {
        try (Connection connection = Conexion.getConnection()) {
            String sql = "INSERT INTO pedidoDelivery (numPedido, mtoTotal, direccionEnvio, metodoPago, fechaRegistro, cancelado) "
                    + "VALUES (?, ?, ?, ?, ?, ?)";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setString(1, pedido.getNumPedido());
                ps.setDouble(2, pedido.getMtoTotal());
                ps.setString(3, pedido.getDireccionEnvio());
                ps.setString(4, pedido.getMetodoPago());
                ps.setDate(5, new java.sql.Date(pedido.getFechaRegistro().getTime()));
                ps.setString(6, pedido.getCancelado());
                ps.executeUpdate();

                return pedido.getNumPedido();
            }
        }
    }

    public List<PedidoDelivery> getAllPedidos() throws SQLException {

        List<PedidoDelivery> pedidos;
        try (Connection connection = Conexion.getConnection()) {

            pedidos = new ArrayList<>();
            String sql = "SELECT * FROM pedidoDelivery";
            try (Statement stmt = connection.createStatement(); ResultSet rs = stmt.executeQuery(sql)) {

                while (rs.next()) {
                    PedidoDelivery pedido = new PedidoDelivery();
                    pedido.setCodigoUnico(rs.getInt("codigoUnico"));
                    pedido.setNumPedido(rs.getString("numPedido"));
                    pedido.setMtoTotal(rs.getDouble("mtoTotal"));
                    pedido.setDireccionEnvio(rs.getString("direccionEnvio"));
                    pedido.setMetodoPago(rs.getString("metodoPago"));
                    pedido.setFechaRegistro(rs.getDate("fechaRegistro"));
                    pedido.setCancelado(rs.getString("cancelado"));

                    pedidos.add(pedido);
                }
            }
        }

        return pedidos;
    }

    public PedidoDelivery getPedidoPorNumPedido(String numPedido) throws SQLException {
        PedidoDelivery pedido = null;

        try (Connection connection = Conexion.getConnection()) {
            String sql = "SELECT * FROM pedidoDelivery WHERE numPedido = ?";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setString(1, numPedido);

                try (ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        pedido = new PedidoDelivery();
                        pedido.setCodigoUnico(rs.getInt("codigoUnico"));
                        pedido.setNumPedido(rs.getString("numPedido"));
                        pedido.setMtoTotal(rs.getDouble("mtoTotal"));
                        pedido.setDireccionEnvio(rs.getString("direccionEnvio"));
                        pedido.setMetodoPago(rs.getString("metodoPago"));
                        pedido.setFechaRegistro(rs.getDate("fechaRegistro"));
                        pedido.setCancelado(rs.getString("cancelado"));
                    }
                }
            }
        }

        return pedido;
    }

}
