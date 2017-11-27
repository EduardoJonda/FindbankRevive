package com.findbank.c15.validacionForm;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.findbank.c15.model.Login;

public class LoginValidator implements Validator{

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return Login.class.equals(arg0);
	}

	@Override
	public void validate(Object obj, Errors error) {
		// TODO Auto-generated method stub
		
		Login login = (Login) obj;
		 
		ValidationUtils.rejectIfEmptyOrWhitespace(error,"password", "login.password", "Falto completar el campo Password");
				
		String email = login.getEmail();
		if (email == null || !email.endsWith("@hotmail.com") || !email.endsWith("@gmail.com")) {
		    error.rejectValue("email",
		    		          "login.email", 
		    		          "El correo no es valido");
		}		
		
		
		
	}

}
