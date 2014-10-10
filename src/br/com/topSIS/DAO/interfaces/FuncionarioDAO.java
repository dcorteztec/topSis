package br.com.topSIS.DAO.interfaces;

import java.util.List;

import br.com.topSIS.model.Funcionario;

public interface FuncionarioDAO extends GenericDAO<Funcionario, Long>{

	public Funcionario findByLoginAndPassword(String login, String password);
	public List<Funcionario> listFuncionario();
	public Funcionario findFuncionarioByid(Long matricula);
	public void desabilitar (Long matricula);
	public void habilitar (Long matricula) ;
}
