package br.com.topSIS.DAO.impl;

import org.hibernate.Query;
import org.hibernate.Session;

import br.com.topSIS.DAO.interfaces.FuncionarioDAO;
import br.com.topSIS.model.Funcionario;

public class FuncionarioDAOImpl extends GenericDAOImpl<Funcionario, Long> implements FuncionarioDAO {

	public FuncionarioDAOImpl(Session session) {
		super(session);
		
	}

	public Funcionario findByLoginAndPassword(String login, String password) {
		String hql = "FROM Funcionario u WHERE u.login = :login and u.senha = :password ";

		Query query = session.createQuery(hql)
				.setParameter("login", login)
				.setParameter("password", password);

		return (Funcionario) query.uniqueResult();
	}
	
}
