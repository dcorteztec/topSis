package br.com.topSIS.DAO.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import br.com.caelum.vraptor.ioc.Component;
import br.com.topSIS.DAO.interfaces.FuncionarioDAO;
import br.com.topSIS.model.Funcionario;

@Component
public class FuncionarioDAOImpl extends GenericDAOImpl<Funcionario, Long>
		implements FuncionarioDAO {

	public FuncionarioDAOImpl(Session session) {
		super(session);

	}

	public Funcionario findByLoginAndPassword(String login, String password) {
		String hql = "FROM Funcionario u WHERE u.login = :login and u.senha = :password ";

		Query query = session.createQuery(hql).setParameter("login", login)
				.setParameter("password", password);

		return (Funcionario) query.uniqueResult();
	}

	@SuppressWarnings("unchecked")
	public List<Funcionario> listFuncionario() {
		String hql = "FROM Funcionario c WHERE c.tipo = 'F' ";
		Query query = session.createQuery(hql);
		return (List<Funcionario>) query.list();
	}

	public Funcionario findFuncionarioByid(Long matricula) {
		String hql = "FROM Funcionario f WHERE f.tipo = 'F' and f.matricula = :matricula ";
		Query query = session.createQuery(hql).setParameter("matricula",
				matricula);
		return (Funcionario) query.uniqueResult();
	}

	@Override
	public void desabilitar(Long matricula) {
		String sql = "UPDATE Usuario SET indHabilitado = true WHERE matricula = :matricula ";

		Query query = session.createSQLQuery(sql).setParameter("matricula",
				matricula);

		query.executeUpdate();
	}

	@Override
	public void habilitar(Long matricula) {
		String sql = "UPDATE Usuario SET indHabilitado = true WHERE matricula = :matricula ";

		Query query = session.createSQLQuery(sql).setParameter("matricula",
				matricula);

		query.executeUpdate();

	}

}
