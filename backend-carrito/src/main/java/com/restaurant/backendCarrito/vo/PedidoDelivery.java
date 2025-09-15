package com.restaurant.backendCarrito.vo;

import java.util.Date;

/**
 *
 * @author Martin
 */
public class PedidoDelivery {
    private int codigoUnico;
    private String numPedido;
    private double mtoTotal;
    private String direccionEnvio;
    private String metodoPago;
    private Date fechaRegistro;
    private String cancelado;

    public int getCodigoUnico() {
        return codigoUnico;
    }

    public void setCodigoUnico(int codigoUnico) {
        this.codigoUnico = codigoUnico;
    }

    public String getNumPedido() {
        return numPedido;
    }

    public void setNumPedido(String numPedido) {
        this.numPedido = numPedido;
    }

    public double getMtoTotal() {
        return mtoTotal;
    }

    public void setMtoTotal(double mtoTotal) {
        this.mtoTotal = mtoTotal;
    }

    public String getDireccionEnvio() {
        return direccionEnvio;
    }

    public void setDireccionEnvio(String direccionEnvio) {
        this.direccionEnvio = direccionEnvio;
    }

    public String getMetodoPago() {
        return metodoPago;
    }

    public void setMetodoPago(String metodoPago) {
        this.metodoPago = metodoPago;
    }

    public Date getFechaRegistro() {
        return fechaRegistro;
    }

    public void setFechaRegistro(Date fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

    public String getCancelado() {
        return cancelado;
    }

    public void setCancelado(String cancelado) {
        this.cancelado = cancelado;
    }

    @Override
    public String toString() {
        return "PedidoDelivery{" + "codigoUnico=" + codigoUnico + ", numPedido=" + numPedido + ", mtoTotal=" + mtoTotal + ", direccionEnvio=" + direccionEnvio + ", metodoPago=" + metodoPago + ", fechaRegistro=" + fechaRegistro + ", cancelado=" + cancelado + '}';
    }

    public PedidoDelivery(String numPedido, double mtoTotal, String direccionEnvio, String metodoPago, java.sql.Date fechaRegistro, String cancelado) {
        this.numPedido = numPedido;
        this.mtoTotal = mtoTotal;
        this.direccionEnvio = direccionEnvio;
        this.metodoPago = metodoPago;
        this.fechaRegistro = fechaRegistro;
        this.cancelado = cancelado;
    }

    public PedidoDelivery() {
    }
    
}
