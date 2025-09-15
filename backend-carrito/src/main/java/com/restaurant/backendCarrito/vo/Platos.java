package com.restaurant.backendCarrito.vo;

public class Platos {
    private int idPlato;
    private String nombrePlato;
    private String descripcionPlato;
    private String tipoPlato;
    private Double precio;
    private String linkImg;

    public String getNombrePlato() {
        return nombrePlato;
    }

    public void setNombrePlato(String nombrePlato) {
        this.nombrePlato = nombrePlato;
    }

    public String getDescripcionPlato() {
        return descripcionPlato;
    }

    public void setDescripcionPlato(String descripcionPlato) {
        this.descripcionPlato = descripcionPlato;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public String getLinkImg() {
        return linkImg;
    }

    public void setLinkImg(String linkImg) {
        this.linkImg = linkImg;
    }

    public int getIdPlato() {
        return idPlato;
    }

    public void setIdPlato(int idPlato) {
        this.idPlato = idPlato;
    }

    public String getTipoPlato() {
        return tipoPlato;
    }

    public void setTipoPlato(String tipoPlato) {
        this.tipoPlato = tipoPlato;
    }

    public Platos(int idPlato, String nombrePlato, String descripcionPlato, String tipoPlato, Double precio, String linkImg) {
        this.idPlato = idPlato;
        this.nombrePlato = nombrePlato;
        this.descripcionPlato = descripcionPlato;
        this.tipoPlato = tipoPlato;
        this.precio = precio;
        this.linkImg = linkImg;
    }

    public Platos(String nombrePlato, String descripcionPlato, String tipoPlato, Double precio, String linkImg) {
        this.nombrePlato = nombrePlato;
        this.descripcionPlato = descripcionPlato;
        this.tipoPlato = tipoPlato;
        this.precio = precio;
        this.linkImg = linkImg;
    }

    public Platos() {
    }
    
    
}
