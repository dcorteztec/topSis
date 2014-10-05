package br.com.topSIS.DAO.impl;

import org.hibernate.Session;

import br.com.caelum.vraptor.ioc.Component;
import br.com.topSIS.DAO.interfaces.ContratanteDAO;
import br.com.topSIS.model.Contratante;

@Component
public class ContratanteDAOImpl extends GenericDAOImpl<Contratante, Long> implements ContratanteDAO{

	public ContratanteDAOImpl(Session session) {
		super(session);
		
	}

}
