package com.findbank.c15.model;

import java.sql.Timestamp;

public class Usuario {
  private int id;
  private String nombre;
  private String email;
  private String password;
  private String tipo;
  private String r_token;
  private Timestamp created_at, updated_at;
  private String imagen; 
   
public Usuario(int id, String nombre, String email, String password, String tipo, String r_token, Timestamp created_at,
		Timestamp updated_at, String imagen) {
	super();
	this.id = id;
	this.nombre = nombre;
	this.email = email;
	this.password = password;
	this.tipo = tipo;
	this.r_token = r_token;
	this.created_at = created_at;
	this.updated_at = updated_at;
	this.imagen = imagen;
}
@Override
public String toString() {
	return "Usuario [id=" + id + ", nombre=" + nombre + ", email=" + email + ", password=" + password + ", tipo=" + tipo
			+ ", r_token=" + r_token + ", created_at=" + created_at + ", updated_at=" + updated_at + ", imagen="
			+ imagen + "]";
}
public Usuario() {
	super();
	// TODO Auto-generated constructor stub
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
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getTipo() {
	return tipo;
}
public void setTipo(String tipo) {
	this.tipo = tipo;
}
public String getR_token() {
	return r_token;
}
public void setR_token(String r_token) {
	this.r_token = r_token;
}
public Timestamp getCreated_at() {
	return created_at;
}
public void setCreated_at(Timestamp created_at) {
	this.created_at = created_at;
}
public Timestamp getUpdated_at() {
	return updated_at;
}
public void setUpdated_at(Timestamp updated_at) {
	this.updated_at = updated_at;
}
public String getImagen() {
	return imagen;
}
public void setImagen(String imagen) {
	this.imagen = imagen;
}

}