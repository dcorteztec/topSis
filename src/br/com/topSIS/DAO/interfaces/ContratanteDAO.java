package br.com.topSIS.DAO.interfaces;

import java.util.List;

import br.com.topSIS.model.Contratante;

public interface ContratanteDAO extends GenericDAO<Contratante, Long>{

	public List<Contratante> listContratante();
	public Contratante findContratanteByid(Long matricula);
	public void desabilitar (Long matriclua);
	public void habilitar (Long matricula) ;
}
