package com.findbank.c15.dao;

import java.util.List;

import com.findbank.c15.model.Agentes;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AgentesDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public List<Agentes> getAllAgentes() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Agentes> agentesList = session.createQuery("from Agentes").list();
		return agentesList;
	}

	public Agentes getAgentes(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Agentes agentes = (Agentes) session.get(Agentes.class, new Integer(id));
		return agentes;
	}

	public Agentes addAgentes(Agentes agentes) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(agentes);
		return agentes;
	}

	public void updateAgentes(Agentes agentes) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(agentes);
	}

	public void deleteAgentes(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Agentes p = (Agentes) session.load(Agentes.class, new Integer(id));
		if (null != p) {
			session.delete(p);
		}
	}	
}