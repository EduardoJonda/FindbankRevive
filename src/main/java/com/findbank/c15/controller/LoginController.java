package com.findbank.c15.controller;
  
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.findbank.c15.model.Agentes;
import com.findbank.c15.model.Login;
import com.findbank.c15.model.Usuario;
import com.findbank.c15.service.AgentesService;
import com.findbank.c15.service.UsuarioService;
import com.findbank.c15.validacionForm.LoginValidator; 

@Controller
public class LoginController {

  @Autowired
  UsuarioService usuarioService;
  
  @Autowired
  AgentesService agentesService;
  
  ///Registra el validador
  @InitBinder
  protected void initBinder(WebDataBinder binder) {
	  binder.setValidator(new LoginValidator()); 
  }
  
  
 	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		  
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		return "home";
	} 
  
  @RequestMapping(value = "/login", method = RequestMethod.GET)
  public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView mav = new ModelAndView("login");
    mav.addObject("login", new Login());

    return mav;
  }
	
  @RequestMapping(value = "/home", method = RequestMethod.POST)
  public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
      @ModelAttribute("login") Login login, @Validated Login user, BindingResult result) {
    ModelAndView mav = null;

    Usuario usuario = usuarioService.validateUser(login);

    
    if(result.hasErrors()) {
    	mav = new ModelAndView("login");
    	
    }
    if (null != usuario) {
    	     if(usuario.getTipo().equals("admi")) {
    	    	 mav = new ModelAndView("redirect:/administrador");
    	      }else {
    	    	  
    	    	   mav = new ModelAndView("redirect:/welcome");
    	      }
     
      //mav.addObject("nombre", usuario.getFirstname());
    } else {
    //  mav = new ModelAndView("login");
    //  mav.addObject("message", "El email o password ingresado es invalido");
    }
    return mav;
  }
  
   
   
  
  
  
  @RequestMapping(value = "/welcome2", method = RequestMethod.GET)
  public ModelAndView showWelcome2(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView mav = new ModelAndView("welcome2"); 

    return mav;
  }
  
}
