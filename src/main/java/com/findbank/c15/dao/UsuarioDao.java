package com.findbank.c15.dao;

import com.findbank.c15.model.Login;
import com.findbank.c15.model.Usuario;

public interface UsuarioDao {

  void register(Usuario usuario);

  Usuario validateUser(Login login);
}
