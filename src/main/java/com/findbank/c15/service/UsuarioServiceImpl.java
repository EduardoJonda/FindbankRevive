package com.findbank.c15.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.findbank.c15.dao.UsuarioDao;
import com.findbank.c15.model.Login;
import com.findbank.c15.model.Usuario;;

public class UsuarioServiceImpl implements UsuarioService {

  @Autowired
  public UsuarioDao userDao;

  public void register(Usuario user) {
    userDao.register(user);
  }

  public Usuario validateUser(Login login) {
    return userDao.validateUser(login);
  }

}
