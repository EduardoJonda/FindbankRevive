package com.findbank.c15.service;

import com.findbank.c15.model.Login;
import com.findbank.c15.model.Usuario;

public interface UsuarioService {

  void register(Usuario user);

  Usuario validateUser(Login login);
}
