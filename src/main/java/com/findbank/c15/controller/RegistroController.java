package com.findbank.c15.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
 
import com.findbank.c15.model.Usuario;
import com.findbank.c15.service.UsuarioService;

@Controller
public class RegistroController {
	  @Autowired
	  public UsuarioService usuarioService;

	  @RequestMapping(value = "/registrar", method = RequestMethod.GET)
	  public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView mav = new ModelAndView("register");
	    mav.addObject("user", new Usuario());

	    return mav;
	  }

	  @RequestMapping(value = "/registerProcess", method = RequestMethod.POST)
	  public ModelAndView addUsuario(HttpServletRequest request, HttpServletResponse response,
	      @ModelAttribute("user") Usuario usuario) {
		   
		  usuarioService.register(usuario);
		  ModelAndView mav = new ModelAndView("redirect:login");
		  mav.addObject("nombre", usuario.getNombre());
		  
		  return mav;
	  }
	}
