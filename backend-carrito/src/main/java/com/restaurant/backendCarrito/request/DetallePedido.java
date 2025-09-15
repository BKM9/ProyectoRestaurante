package com.restaurant.backendCarrito.request;

public class DetallePedido {
    private String metEntrega;
    private String direccion;
    private Double mtoTotal;
    private String instruccionesEsp;
    private String metPago;

    public String getMetEntrega() {
        return metEntrega;
    }

    public void setMetEntrega(String metEntrega) {
        this.metEntrega = metEntrega;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public Double getMtoTotal() {
        return mtoTotal;
    }

    public void setMtoTotal(Double mtoTotal) {
        this.mtoTotal = mtoTotal;
    }

    public String getInstruccionesEsp() {
        return instruccionesEsp;
    }

    public void setInstruccionesEsp(String instruccionesEsp) {
        this.instruccionesEsp = instruccionesEsp;
    }

    public String getMetPago() {
        return metPago;
    }

    public void setMetPago(String metPago) {
        this.metPago = metPago;
    }

    @Override
    public String toString() {
        return "DetallePedido{" + "metEntrega=" + metEntrega + ", direccion=" + direccion + ", mtoTotal=" + mtoTotal + ", instruccionesEsp=" + instruccionesEsp + ", metPago=" + metPago + '}';
    }

}
