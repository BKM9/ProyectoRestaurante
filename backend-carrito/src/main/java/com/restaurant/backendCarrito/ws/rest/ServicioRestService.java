package com.restaurant.backendCarrito.ws.rest;

import com.restaurant.backendCarrito.connection.PedidoDeliveryDAO;
import com.restaurant.backendCarrito.connection.PlatoDAO;
import java.util.ArrayList;
import java.util.List;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.restaurant.backendCarrito.request.Pedido;
import com.restaurant.backendCarrito.vo.Platos;
import com.restaurant.backendCarrito.vo.Menu;
import com.restaurant.backendCarrito.vo.Pago;
import com.restaurant.backendCarrito.vo.PedidoDelivery;
import java.sql.SQLException;
import java.util.Date;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestParam;

@RestController
@RequestMapping(method = {RequestMethod.GET, RequestMethod.POST})
@CrossOrigin(origins = "http://localhost:8081")
public class ServicioRestService {

    @PostMapping("/api/restaurante/registrarPedido")
    public Pago crearPedido(@RequestBody PedidoDelivery body) throws SQLException {
        PedidoDeliveryDAO delivery = new PedidoDeliveryDAO();
        String codPedido = delivery.insertPedido(body);
        System.out.println(body);
        Pago pagar = new Pago();
        pagar.setCodigoPago(codPedido);
        pagar.setFechaCreacion(new Date());
        return pagar;
    }

    @PostMapping("/api/restaurante/pagarPedido")
    public String pagarPedido(@RequestParam("codigo") String codigo,
            @RequestParam("fecha") String fecha) {
        System.out.println("Codigo pago : ".concat(codigo));
        PedidoDeliveryDAO delivery = new PedidoDeliveryDAO();
        return delivery.pagarPedido(codigo);
    }
    
    @GetMapping("/api/restaurante/estadoPedidoPago")
    public ResponseEntity<PedidoDelivery> buscarPedidoNumPedido(@RequestParam("codigo") String codigo) {
        try {
            System.out.println("Consultando Pago ");
            PedidoDeliveryDAO pedidoDeliveryDAO = new PedidoDeliveryDAO();
            PedidoDelivery pedido = pedidoDeliveryDAO.getPedidoPorNumPedido(codigo);
            return ResponseEntity.ok(pedido);
        } catch (SQLException e) {
            return ResponseEntity.internalServerError().build();
        }
    }

    @GetMapping("/api/restaurante/consultarMenu")
    public ResponseEntity<Menu> cargarPlatos() {
        try {
            System.out.println("Consultando Platos");
            PlatoDAO platoDAO = new PlatoDAO();
            Menu menu = platoDAO.cargarMenu();
            return ResponseEntity.ok(menu);
        } catch (SQLException e) {
            return ResponseEntity.internalServerError().build();
        }
    }
}
