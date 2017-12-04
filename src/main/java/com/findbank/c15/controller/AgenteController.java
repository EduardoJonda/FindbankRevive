package com.findbank.c15.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.findbank.c15.dao.UsuarioDaoImpl;
import com.findbank.c15.model.Agentes;
import com.findbank.c15.model.Usuario;
import com.findbank.c15.service.AgentesService;
import com.findbank.c15.service.UsuarioService; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable; 
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView; 

@Controller
public class AgenteController {
	
	@Autowired
	UsuarioService usuarioService;
	
	@Autowired
	AgentesService agentesService;
	
	@RequestMapping(value = "/administrador", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getAgentes(Model model) {
		
		List<Agentes> listOfAgentes = agentesService.getAllAgentes();
		model.addAttribute("agentes", new Agentes());
		model.addAttribute("listOfAgentes", listOfAgentes); 
		return "welcomeadmi";
	}  
	
	@RequestMapping(value = "/administrador2", method = RequestMethod.GET)
	public String getUsers(Model model) {
  
		    model.addAttribute("usuario", new Usuario());
			model.addAttribute("usuarios", usuarioService.findAll());
		 
		return "welcomeadmi2";
	}	
	
	//updateUsuario
	@RequestMapping(value = "/updateUsuario/{id}", method = RequestMethod.GET)
	public String updateUser(@PathVariable("id") int id,Model model) {
		 model.addAttribute("usuario", this.usuarioService.find(id)); 
	        model.addAttribute("usuarios", this.usuarioService.findAll());
	       // ModelAndView mav = new ModelAndView();
	    	model.addAttribute("textomodal", "verdadero");
	        return "welcomeadmi2";
	}
	
	@RequestMapping(value = "/deleteUsuario/{id}", method = RequestMethod.GET)
	public String deleteUser(@PathVariable("id") int id) {
		usuarioService.delete(id);
		 return "redirect:/administrador2";

	}
	
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String addAgente(@ModelAttribute("usuario") Usuario usuarios) {	
		if(usuarios.getId()==0)
		{ 
			usuarioService.create(usuarios.getNombre(), usuarios.getEmail(), usuarios.getPassword(), usuarios.getTipo());
		}
		else
		{	 
			usuarioService.update(usuarios.getId(),usuarios.getNombre(), usuarios.getEmail(), usuarios.getPassword(),usuarios.getTipo());
		}
		
		return "redirect:/administrador2";
	}
	
	////Interfaz de usuario pripietario/////
	  @RequestMapping(value = "/welcome", method = RequestMethod.GET, headers = "Accept=application/json")
	   public ModelAndView showWelcome(HttpServletRequest request, HttpServletResponse response) {
	     ModelAndView mav = new ModelAndView("welcome"); 
	     
	    List<Agentes> listOfAgentes = agentesService.getAllAgentes();
	    mav.addObject("agentes", new Agentes());
	    mav.addObject("listOfAgentes", listOfAgentes);
	     return mav;
	   }
	  
	  
		@RequestMapping(value = "/editarAgenteUser/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
		public String updateAgenteUser(@PathVariable("id") int id,Model model) {
			 model.addAttribute("agentes", this.agentesService.getAgentes(id));
		        model.addAttribute("listOfAgentes", this.agentesService.getAllAgentes());
		       // ModelAndView mav = new ModelAndView();
		    	model.addAttribute("textomodal", "verdadero");
		        return "welcome";
		}
	   
	  
		 @RequestMapping(value = "/addAgenteUser", method = RequestMethod.POST, headers = "Accept=application/json")
		 	public String addCountry(@ModelAttribute("agentes") Agentes agentes) {	
		 		if(agentes.getId()==0)
		 		{
		 		agentesService.addAgentes(agentes);
		 		}
		 		else
		 		{	
		 		agentesService.updateAgentes(agentes);
		 		}
		 		
		 		return "redirect:/welcome";
		 	}
	////Interfaz de usuario pripietario (fin)/////
	
	
	@RequestMapping(value = "/agente/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public Agentes getAgenteById(@PathVariable int id) {
		
	
		return agentesService.getAgentes(id);
		
	}

	@RequestMapping(value = "/addAgente", method = RequestMethod.POST, headers = "Accept=application/json")
	public String addAgente(@ModelAttribute("agentes") Agentes agentes) {	
		if(agentes.getId()==0)
		{
			agentesService.addAgentes(agentes);
		}
		else
		{	
			agentesService.updateAgentes(agentes);
		}
		
		return "redirect:/administrador";
	}

	@RequestMapping(value = "/updateAgente/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public String updateAgente(@PathVariable("id") int id,Model model) {
		 model.addAttribute("agentes", this.agentesService.getAgentes(id));
	        model.addAttribute("listOfAgentes", this.agentesService.getAllAgentes());
	       // ModelAndView mav = new ModelAndView();
	    	model.addAttribute("textomodal", "verdadero");
	        return "welcomeadmi";
	}

	@RequestMapping(value = "/deleteAgente/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public String deleteAgente(@PathVariable("id") int id) {
		agentesService.deleteAgentes(id);
		 return "redirect:/administrador";

	}	
}