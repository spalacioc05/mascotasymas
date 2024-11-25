/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.spalacioc.mascotasymas.model;

/**
 *
 * @author spala
 */
public class Producto {
    // Atributos
    private int sku;
    private String nombre;
    private String descripcion;
    private String codigoBarras;
    private String categoria;
    private String marca;
    private String proveedor;
    private int cantidadDisponible;
    private double precioUnitario;
    private float porcentajeImpuesto;
    private double impuesto;
    private double precioVenta;
    private double peso;
    private String imagen;

    // Constructor vacío
    public Producto() {
    }

    // Constructor con todos los atributos
    public Producto(int sku, String nombre, String descripcion, String codigoBarras, String categoria, String marca,
                    String proveedor, int cantidadDisponible, double precioUnitario, float porcentajeImpuesto,
                    double impuesto, double precioVenta, double peso, String imagen) {
        this.sku = sku;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.codigoBarras = codigoBarras;
        this.categoria = categoria;
        this.marca = marca;
        this.proveedor = proveedor;
        this.cantidadDisponible = cantidadDisponible;
        this.precioUnitario = precioUnitario;
        this.porcentajeImpuesto = porcentajeImpuesto;
        this.impuesto = impuesto;
        this.precioVenta = precioVenta;
        this.peso = peso;
        this.imagen = imagen;
    }

    // Getters y Setters
    public int getSku() {
        return sku;
    }

    public void setSku(int sku) {
        this.sku = sku;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getCodigoBarras() {
        return codigoBarras;
    }

    public void setCodigoBarras(String codigoBarras) {
        this.codigoBarras = codigoBarras;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getProveedor() {
        return proveedor;
    }

    public void setProveedor(String proveedor) {
        this.proveedor = proveedor;
    }

    public int getCantidadDisponible() {
        return cantidadDisponible;
    }

    public void setCantidadDisponible(int cantidadDisponible) {
        this.cantidadDisponible = cantidadDisponible;
    }

    public double getPrecioUnitario() {
        return precioUnitario;
    }

    public void setPrecioUnitario(double precioUnitario) {
        this.precioUnitario = precioUnitario;
    }

    public float getPorcentajeImpuesto() {
        return porcentajeImpuesto;
    }

    public void setPorcentajeImpuesto(float porcentajeImpuesto) {
        this.porcentajeImpuesto = porcentajeImpuesto;
    }

    public double getImpuesto() {
        return impuesto;
    }

    public void setImpuesto(double impuesto) {
        this.impuesto = impuesto;
    }

    public double getPrecioVenta() {
        return precioVenta;
    }

    public void setPrecioVenta(double precioVenta) {
        this.precioVenta = precioVenta;
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    // Método toString para mostrar información del producto
    @Override
    public String toString() {
        return "Producto{" +
            "sku=" + sku +
            ", nombre='" + nombre + '\'' +
            ", descripcion='" + descripcion + '\'' +
            ", codigoBarras='" + codigoBarras + '\'' +
            ", categoria='" + categoria + '\'' +
            ", marca='" + marca + '\'' +
            ", proveedor='" + proveedor + '\'' +
            ", cantidadDisponible=" + cantidadDisponible +
            ", precioUnitario=" + precioUnitario +
            ", porcentajeImpuesto=" + porcentajeImpuesto +
            ", impuesto=" + impuesto +
            ", precioVenta=" + precioVenta +
            ", peso=" + peso +
            ", imagen='" + imagen + '\'' +
            '}';
    }
}
