package com.findbank.c15.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.findbank.c15.dao.UsuarioDao;
import com.findbank.c15.model.Login;
import com.findbank.c15.model.Usuario; 

public class UsuarioServiceImpl implements UsuarioService {

  @Autowired
  public UsuarioDao userDao;

  public void register(Usuario user) {
    userDao.register(user);
  }

  public Usuario validateUser(Login login) {
    return userDao.validateUser(login);
  }

@Override
public List<Usuario> findAll() {
	List<Usuario> users = userDao.findAllEmployees();
	
	return users;
}

@Override
public void create(String nombre, String email, String password, String tipo) {
	userDao.create(nombre, email, password , tipo);
	
}

@Override
public void delete(int id) {
	userDao.delete(id);
	
}

@Override
public void update(int id ,String nombre, String email, String password, String tipo) {
	
	userDao.update(id, nombre, email, password, tipo);
}

@Override
public Usuario find(int id) {
	Usuario user = userDao.findUser(id);

	return user;
}

}
