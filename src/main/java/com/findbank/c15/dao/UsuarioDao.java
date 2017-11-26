package com.findbank.c15.dao;

import java.util.List;

import com.findbank.c15.model.Login;
import com.findbank.c15.model.Usuario; 

public interface UsuarioDao {

  void register(Usuario usuario);

  Usuario validateUser(Login login);
  
  List<Usuario> findAllEmployees();
  
  void create(String nombre, String email, String password, String tipo) ;

  void delete(int id);

  void update(int id, String nombre, String email, String password, String tipo);
  
  Usuario findUser(int id);
}
