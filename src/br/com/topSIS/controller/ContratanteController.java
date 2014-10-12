package br.com.topSIS.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import net.diegomaia.vraptor.saci.annotation.LoggedIn;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.topSIS.DAO.interfaces.ContratanteDAO;
import br.com.topSIS.componente.UsuarioComponente;
import br.com.topSIS.model.Contratante;
import br.com.topSIS.model.Dependente;

@LoggedIn
@Resource
public class ContratanteController {

	private final Result result;
	private final ContratanteDAO contratanteDAO;
	private final Validator validator;
	private final UsuarioComponente usuarioComponente;

	public ContratanteController(Result result, Validator validator,
			ContratanteDAO contratanteDAO, UsuarioComponente usuarioComponente) {
		this.result = result;
		this.validator = validator;
		this.contratanteDAO = contratanteDAO;
		this.usuarioComponente = usuarioComponente;
	}

	@Path("/contratante/form")
	public void form() {

	}

	@Path("/contratante/list")
	public void list() {

		List<Contratante> list = new ArrayList<Contratante>();
		list = contratanteDAO.listContratante();
		result.include("contratante", list);

	}

	@Path("/contratante/formEdit/{contratante.matricula}")
	@Get
	public void formEdit(Contratante contratante) {

		Contratante contra = contratanteDAO.findById(contratante.getMatricula());

		result.include("contratante", contra);

	}

	@Path("/contratante/add")
	@Post
	public void add(Contratante contratante) throws ParseException {

		if (!contratanteDAO.exists(contratante.getMatricula())) {

			validator.onErrorUsePageOf(ContratanteController.class).form();
			contratante.getEndereco().setUsuario(contratante);
			contratante.getTelefone().setUsuario(contratante);
			contratante.getPlano().setContratante(contratante);
			contratante.setDataCadastro(new Date());
			Set<Dependente> dependentes = new HashSet<Dependente>();

			if (contratante.getDependente() != null) {
				for (int i = 0; i < contratante.getDependente().length; i++) {
					contratante.getPlano().setQtdDependente(
							contratante.getDependente().length);
					Dependente dependente = new Dependente();
					dependente.setNome(contratante.getDependente()[i]
							.toString());
					DateFormat df = new SimpleDateFormat("dd/mm/yyyy");
					Date date = df.parse(contratante.getDataNascimento()[i]
							.toString());
					dependente.setDataNasc(date);
					dependente.setContratante(contratante);
					dependentes.add(dependente);
				}

				contratante.setDependentes(dependentes);
			}
			contratante.setFuncionario(usuarioComponente.getFuncionario().getNome());
			contratanteDAO.addOrUpdate(contratante);
			result.redirectTo(this).list();
		} else {
			result.include("errorMsg", "Matricula Já cadastrada");
			result.redirectTo(this).list();
		}
	}

	@Path("/contratante/update")
	@Post
	public void update(Contratante contratante) throws ParseException {

		validator.onErrorUsePageOf(ContratanteController.class).formEdit(
				contratante);
		contratante.getEndereco().setUsuario(contratante);
		contratante.getTelefone().setUsuario(contratante);
		contratante.getPlano().setContratante(contratante);
		contratante.setDataCadastro(new Date());
		Set<Dependente> dependentes = new HashSet<Dependente>();

		if (contratante.getDependente() != null) {
			for (int i = 0; i < contratante.getDependente().length; i++) {
				contratante.getPlano().setQtdDependente(
						contratante.getDependente().length);
				Dependente dependente = new Dependente();
				dependente.setNome(contratante.getDependente()[i].toString());
				DateFormat df = new SimpleDateFormat("dd/mm/yyyy");
				Date date = df.parse(contratante.getDataNascimento()[i]
						.toString());
				dependente.setDataNasc(date);
				try {
					if (contratante.getIdDependente()[i] != null) {
						dependente.setIdDependente(Long.parseLong(contratante
								.getIdDependente()[i].toString()));
					}
				} catch (ArrayIndexOutOfBoundsException e) {
					
				}
				dependente.setContratante(contratante);
				dependentes.add(dependente);
			}

			contratante.setDependentes(dependentes);
		}
		contratante.setFucnionarioEdit(usuarioComponente.getFuncionario().getNome());
		contratanteDAO.merge(contratante);
		result.redirectTo(this).list();
	}
	
	@Path("/contratante/desabilitar/{matricula}")
	@Get
	public void desabilitar(Long matricula) {
		Contratante contratante = this.contratanteDAO.findContratanteByid(matricula);

		this.contratanteDAO.desabilitar(contratante.getMatricula());
		result.redirectTo(this).list();
	}
	@Path("/contratante/habilitar/{matricula}")
	@Get
	public void habilitar(Long matricula) {
		Contratante contratante = this.contratanteDAO.findContratanteByid(matricula);

		this.contratanteDAO.habilitar(contratante.getMatricula());
		result.redirectTo(this).list();
	}
}
