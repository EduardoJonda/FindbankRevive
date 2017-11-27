package com.findbank.c15.validacionForm;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
 
import com.findbank.c15.model.Usuario;

public class UsuarioValidator implements Validator{

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return Usuario.class.equals(arg0);
	}

	@Override
	public void validate(Object obj, Errors error) {
		
		Usuario user = (Usuario) obj ;
		
ValidationUtils.rejectIfEmptyOrWhitespace(error,"nombre", "user.nombre", "Falto completar el campo Nombre");
ValidationUtils.rejectIfEmptyOrWhitespace(error,"email", "user.email", "Falto completar el campo Email");
ValidationUtils.rejectIfEmptyOrWhitespace(error,"password", "user.password", "Falto completar el campo Password");
		
String email = user.getEmail();
if (email == null || !email.endsWith("@hotmail.com") || !email.endsWith("@gmail.com")) {
    error.rejectValue("email", "user.email", "El correo no es valido");
}		
		 
	} 
}
