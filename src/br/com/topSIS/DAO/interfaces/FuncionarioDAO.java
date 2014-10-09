package br.com.topSIS.DAO.interfaces;

import br.com.topSIS.model.Funcionario;

public interface FuncionarioDAO extends GenericDAO<Funcionario, Long>{

	public Funcionario findByLoginAndPassword(String login, String password);
}
