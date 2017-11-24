package com.findbank.c15.service;

import java.util.List;
import com.findbank.c15.dao.AgentesDAO;
import com.findbank.c15.model.Agentes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("agentesService")
public class AgentesService {

	@Autowired
	AgentesDAO agentesDao;
	
	@Transactional
	public List<Agentes> getAllAgentes() {
		return agentesDao.getAllAgentes();
	}

	@Transactional
	public Agentes getAgentes(int id) {
		return agentesDao.getAgentes(id);
	}

	@Transactional
	public void addAgentes(Agentes agentes) {
		agentesDao.addAgentes(agentes);
	}

	@Transactional
	public void updateAgentes(Agentes agentes) {
		agentesDao.updateAgentes(agentes);

	}

	@Transactional
	public void deleteAgentes(int id) {
		agentesDao.deleteAgentes(id);
	}
}