package com.restaurant.backendCarrito.request;

import java.util.List;

public class Pedido {
    private DetallePedido detaPedido;
    private List<Carrito> pedido;

    public DetallePedido getDetaPedido() {
        return detaPedido;
    }

    public void setDetaPedido(DetallePedido detaPedido) {
        this.detaPedido = detaPedido;
    }

    public List<Carrito> getPedido() {
        return pedido;
    }

    public void setPedido(List<Carrito> pedido) {
        this.pedido = pedido;
    }

    @Override
    public String toString() {
        return "Pedido{" + "detaPedido=" + detaPedido + ", pedido=" + pedido + '}';
    }
    
}
