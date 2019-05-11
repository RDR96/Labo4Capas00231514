package com.uca.capas.classes;


import javax.validation.constraints.Pattern;
import javax.validation.constraints.PositiveOrZero;
import javax.validation.constraints.Size;

import javax.validation.constraints.NotEmpty;

import javax.validation.constraints.NotNull;


public class Producto {
	
	@NotEmpty(message="No puede estar vacio")
	@Size(message="El maximo de caracteres son 30", max=30)
	private String name;	
	
	@NotEmpty(message="No puede estar vacio")
	@Size(message="El maximo de caracteres son 30", max=30)
	private String marca;
	
	
	@NotEmpty(message="No puede estar vacio")
	@Size(message="El maximo de caracteres son 30", max=30)
	private String descripcion;
	
	@NotEmpty(message="No puede estar vacio")
	@Size(message="El maximo de caracteres son 30", max=30)
	private String categoria;
	
	
	@PositiveOrZero
	private double precio;
	
	@Pattern(regexp="((([0-2](?=[0-9]))[0-9])|(([3](?=[0-1]))[0-1]))\\/((([0](?=[0-9]))[0-9])|(([1](?=[0-2]))[0-2]))\\/2[0-9]{3}", message="Ingrese una fecha válida: dd/mm/yyyy. Ejemplo 01/10/2019")
	@NotEmpty(message="No puede estar vacio")
	private String fechaExp;

	public Producto() {
		
		// TODO Auto-generated constructor stub
	}
	
	public Producto(String name, String marca, String descripcion, String categoria, double precio, String fechaExp) {
		this.name = name;
		this.marca = marca;
		this.descripcion = descripcion;
		this.categoria = categoria;
		this.precio = precio;
		this.fechaExp = fechaExp;		 
	}
	
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	public void setFechaExp(String fechaExp) {
		this.fechaExp = fechaExp;
	}
	
	public void setPrecio(double precio) {
		this.precio = precio;
	}
	
	public void setMarca(String marca) {
		this.marca = marca;
	}
	
	public void setName(String name) {
		this.name = name;
	}	
	
	public String getCategoria() {
		return categoria;
	}
	
	public String getDescripcion() {
		return descripcion;
	}
	
	public String getFechaExp() {
		return fechaExp;
	}
	
	public String getName() {
		return name;
	}
	
	
	public String getMarca() {
		return marca;
	}
	
	public double getPrecio() {
		return precio;
	}	
	
}
