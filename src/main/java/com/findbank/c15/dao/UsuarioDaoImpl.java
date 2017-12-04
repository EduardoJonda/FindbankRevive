package com.findbank.c15.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.findbank.c15.hash.Hash;
import com.findbank.c15.model.Login;
import com.findbank.c15.model.Usuario; 
  
public class UsuarioDaoImpl implements UsuarioDao{

	 @Autowired
	  DataSource datasource;

	  @Autowired
	  JdbcTemplate jdbcTemplate;
	    
	@Override
	public void register(Usuario usuario) {
		// TODO Auto-generated method stub
	    String sql = "insert into users values(?,?,?,?,?,?,?,?,?)";

	    jdbcTemplate.update(sql, new Object[] {usuario.getId(),usuario.getNombre(),usuario.getEmail(), Hash.sha1(usuario.getPassword()),usuario.getTipo(),null, null, null, null});
	}
	
	 public List<Usuario> getUsers() {
		  return jdbcTemplate.query("select * from users", new RowMapper<Usuario>() {
		   public Usuario mapRow(ResultSet rs, int row) throws SQLException {
			   Usuario user = new Usuario();
			   user.setId(rs.getInt(1));
			   user.setNombre(rs.getString(2));
			   user.setEmail(rs.getString(3));
			   user.setPassword(rs.getString(4));
			   user.setTipo(rs.getString(5));
		    return user;
		   }
		  });
		 }

	@Override
	public Usuario validateUser(Login login) {
		// TODO Auto-generated method stub
		 String sql = "select * from users where email='" + login.getEmail() + "' and password='" + Hash.sha1(login.getPassword())
	        + "'";

	    List<Usuario> users = jdbcTemplate.query(sql, new UsuarioMapper());

	    return users.size() > 0 ? users.get(0) : null;
	  }

	@Override
	public List<Usuario> findAllEmployees() {
		String query = "SELECT id, nombre, email, password, tipo FROM users ";
 
			List<Usuario> users = jdbcTemplate.query(query, new UserMapper());
			//
			return users; 
		 
}

class UsuarioMapper implements RowMapper<Usuario> {

  public Usuario mapRow(ResultSet rs, int arg1) throws SQLException {
	  Usuario usuario = new Usuario();

	  usuario.setEmail(rs.getString("email"));
	  usuario.setPassword(rs.getString("password"));
	  usuario.setNombre(rs.getString("nombre"));
	  usuario.setTipo(rs.getString("tipo")); 

    return usuario;
  } 
}

public class UserMapper implements RowMapper<Usuario>{

	public Usuario mapRow(ResultSet rs, int rowNum) throws SQLException {
		Usuario usuario = new Usuario();
		usuario.setId(rs.getInt("id"));
		 usuario.setEmail(rs.getString("email"));
		  usuario.setPassword(rs.getString("password"));
		  usuario.setNombre(rs.getString("nombre"));
		  usuario.setTipo(rs.getString("tipo")); 
		return usuario;
	}
}

@Override
public void create(String nombre, String email, String password, String tipo) {
	String query = "INSERT INTO users (nombre, email, password, tipo)  VALUES ( ?,?,?,? )";

	Object[] params = new Object[] { nombre, email, password, tipo};

	//Employee emp = null; 
		// create
		jdbcTemplate.update(query, params);
 
}

@Override
public void delete(int id) {
	String query = "DELETE FROM users WHERE id = ? ";

	Object[] params = new Object[] { id };
 
		jdbcTemplate.update(query, params);
	 
}

@Override
public void update( int id, String nombre, String email, String password, String tipo) {
	String query = "UPDATE users SET nombre = ?, email =?, password = ?, tipo = ? WHERE id = ?";

	Object[] params = new Object[] { nombre, email, password, tipo, id  };
 
		jdbcTemplate.update(query, params);
}

@Override
public Usuario findUser(int id) {
	String query = "SELECT id, nombre, email, password, tipo"
			+ " FROM users WHERE id = ?";

	Object[] params = new Object[] { id };
 
		Usuario user = (Usuario) jdbcTemplate.queryForObject(query, params, new UserMapper());
		//
		return user; 
}
}