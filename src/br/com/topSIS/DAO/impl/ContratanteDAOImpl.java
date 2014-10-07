package br.com.topSIS.DAO.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import br.com.caelum.vraptor.ioc.Component;
import br.com.topSIS.DAO.interfaces.ContratanteDAO;
import br.com.topSIS.model.Contratante;

@Component
public class ContratanteDAOImpl extends GenericDAOImpl<Contratante, Long> implements ContratanteDAO{

	public ContratanteDAOImpl(Session session) {
		super(session);
		
	}

	@SuppressWarnings("unchecked")
	public List<Contratante> listContratante() {
		String hql = "FROM Contratante c WHERE c.tipo = 'C' ";
		Query query = session.createQuery(hql);
		return (List<Contratante>) query.list();

	}

}
