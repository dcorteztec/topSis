package br.com.topSIS.controller;

import java.util.ArrayList;
import java.util.List;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.topSIS.DAO.interfaces.FuncionarioDAO;
import br.com.topSIS.model.Funcionario;
import br.com.topSIS.utils.Util;

@Resource
public class FuncionarioController {

	private final Result result;
	private final Validator validator;
	private final FuncionarioDAO funcionarioDAO;
	
	
	public FuncionarioController(Result result, Validator validator, FuncionarioDAO funcionarioDAO) {
		this.result = result;
		this.validator = validator;
		this.funcionarioDAO = funcionarioDAO;
	}
	
	@Path("/funcionario/form")
	public void form(){
		
	}
	
	@Path("/funcionario/add")
	@Post
	public void add(Funcionario funcionario){
		validator.onErrorUsePageOf(ContratanteController.class).form();
		funcionario.setSenha(Util.getInstance().crypt(funcionario.getSenha()));
		funcionario.getEndereco().setUsuario(funcionario);
		funcionario.getTelefone().setUsuario(funcionario);
        funcionarioDAO.addOrUpdate(funcionario);
        
	}
	
	@Path("/funcionario/list")
	public void list() {

		List<Funcionario> list = new ArrayList<Funcionario>();
		list = funcionarioDAO.listFuncionario();
		result.include("funcionario", list);

	}
}
