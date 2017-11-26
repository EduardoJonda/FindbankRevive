package com.findbank.c15.service;

import java.util.List;

import com.findbank.c15.model.Login;
import com.findbank.c15.model.Usuario; 

public interface UsuarioService {

  void register(Usuario user);

  Usuario validateUser(Login login);
  
  List<Usuario> findAll();
  
  void create(String nombre, String email, String password, String tipo) ;

  void delete(int id);

  void update(int id, String nombre, String email, String password, String tipo);
  
  Usuario find(int id);
}
