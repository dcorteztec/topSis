package br.com.topSIS.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.topSIS.DAO.interfaces.ContratanteDAO;
import br.com.topSIS.model.Contratante;
import br.com.topSIS.model.Dependente;

@Resource
public class ContratanteController {

	private final Result result;
	private final ContratanteDAO contratanteDAO;
	private final Validator validator;

	public ContratanteController(Result result, Validator validator,
			ContratanteDAO contratanteDAO) {
		this.result = result;
		this.validator = validator;
		this.contratanteDAO = contratanteDAO;
	}

	@Path("/contratante/form")
	public void form() {

	}

	@Path("/contratante/areaSaveOrUpdate")
	@Post
	public void addOrUpdate(Contratante contratante) throws ParseException {
	   
		if(!contratanteDAO.exists(contratante.getMatricula())){
		
		validator.onErrorUsePageOf(ContratanteController.class).form();
		contratante.getEndereco().setUsuario(contratante);
		contratante.getTelefone().setUsuario(contratante);
		contratante.getPlano().setContratante(contratante);
		contratante.setDataCadastro(new Date());
		Set<Dependente> dependentes = new HashSet<Dependente>();
		
		if(contratante.getDependente()!=null){
		for (int i = 0; i < contratante.getDependente().length; i++) {
			contratante.getPlano().setQtdDependente(contratante.getDependente().length);
			Dependente dependente = new Dependente();
			dependente.setNome(contratante.getDependente()[i].toString());
			DateFormat df = new SimpleDateFormat("dd/mm/yyyy");
			Date date = df.parse(contratante.getDataNascimento()[i].toString());
			dependente.setDataNasc(date);
			dependente.setContratante(contratante);
			dependentes.add(dependente);
		}
		
        contratante.setDependentes(dependentes);
		} 
		contratanteDAO.addOrUpdate(contratante);
		result.redirectTo(IndexController.class).index();
	}
		result.include("errorMsg", "Matricula Já cadastrada");
		result.redirectTo(IndexController.class).index();
	}
}
