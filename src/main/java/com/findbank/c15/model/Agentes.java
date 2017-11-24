package com.findbank.c15.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/*
 * This is our model class and it corresponds to Country table in database
 */
@Entity
@Table(name="AGENTES")
public class Agentes{
	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int id;
	
	@Column(name="nombre")
	String nombre;	
	
	@Column(name="direccion")
	String direccion;
	
	@Column(name="lat")
	float lat;
	
	@Column(name="lng")
	float lng;
	 
	@Column(name="tipo")
	String tipo;
	
	@Column(name="sistema")
	int sistema;
	
	@Column(name="seguridad")
	int seguridad;
	
	@Column(name="horario")
	String horario;
	
	@Column(name="descripcion")
	String descripcion;
	
	public Agentes() {
		super();
	}
	  
	public Agentes(int id, String nombre, String direccion, float lat, float lng, String tipo, int sistema,
			int seguridad, String horario, String descripcion) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.direccion = direccion;
		this.lat = lat;
		this.lng = lng;
		this.tipo = tipo;
		this.sistema = sistema;
		this.seguridad = seguridad;
		this.horario = horario;
		this.descripcion = descripcion;
	}
	 
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	 
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public float getLat() {
		return lat;
	}

	public void setLat(float lat) {
		this.lat = lat;
	}

	public float getLng() {
		return lng;
	}

	public void setLng(float lng) {
		this.lng = lng;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public int getSistema() {
		return sistema;
	}
	public void setSistema(int sistema) {
		this.sistema = sistema;
	}
	public int getSeguridad() {
		return seguridad;
	}
	public void setSeguridad(int seguridad) {
		this.seguridad = seguridad;
	}
	public String getHorario() {
		return horario;
	}
	public void setHorario(String horario) {
		this.horario = horario;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
}