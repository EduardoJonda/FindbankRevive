package com.findbank.c15.controller;


import java.util.List;

import com.findbank.c15.model.Agentes; 
import com.findbank.c15.service.AgentesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable; 
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod; 

@Controller
public class AgenteController {
	
	@Autowired
	AgentesService agentesService;
	
	@RequestMapping(value = "/administrador", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getAgentes(Model model) {
		
		List<Agentes> listOfAgentes = agentesService.getAllAgentes();
		model.addAttribute("agentes", new Agentes());
		model.addAttribute("listOfAgentes", listOfAgentes); 
		return "welcomeadmi";
	} 
	
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