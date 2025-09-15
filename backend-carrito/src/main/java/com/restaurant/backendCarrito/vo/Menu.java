package com.restaurant.backendCarrito.vo;

import java.util.List;

public class Menu {
    private List<Platos> entrada;
    private List<Platos> principal;
    private List<Platos> postre;
    private List<Platos> bebida;

    public List<Platos> getEntrada() {
        return entrada;
    }

    public void setEntrada(List<Platos> entrada) {
        this.entrada = entrada;
    }

    public List<Platos> getPrincipal() {
        return principal;
    }

    public void setPrincipal(List<Platos> principal) {
        this.principal = principal;
    }

    public List<Platos> getPostre() {
        return postre;
    }

    public void setPostre(List<Platos> postre) {
        this.postre = postre;
    }

    public List<Platos> getBebida() {
        return bebida;
    }

    public void setBebida(List<Platos> bebida) {
        this.bebida = bebida;
    }


}
