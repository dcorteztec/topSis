package br.com.topSIS.controller;

import java.text.ParseException;

import net.diegomaia.vraptor.saci.annotation.AccessDeniedPage;
import net.diegomaia.vraptor.saci.annotation.LoggedIn;
import net.diegomaia.vraptor.saci.annotation.LoginPage;

//import net.diegomaia.vraptor.saci.annotation.AccessDeniedPage;
//import net.diegomaia.vraptor.saci.annotation.LoginPage;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.topSIS.DAO.interfaces.FuncionarioDAO;
import br.com.topSIS.componente.UsuarioComponente;
import br.com.topSIS.model.Funcionario;
import br.com.topSIS.utils.Util;

@Resource
public class IndexController {

	private final Result result;
	private final UsuarioComponente usuarioComponente;
	private final FuncionarioDAO funcionarioDAO;

	public IndexController(Result result, UsuarioComponente usuarioComponente,
			FuncionarioDAO funcionarioDAO) {
		this.result = result;
		this.usuarioComponente = usuarioComponente;
		this.funcionarioDAO = funcionarioDAO;
	}

	@LoggedIn
	@Path("/")
	@Get
	public void index() {

	}

	@Path("/logout")
	public void logout() {

		usuarioComponente.setLoggedIn(false);
		result.redirectTo(this).login();
	}

	@LoginPage
	@Get
	public void login() {

	}

	@Get
	@AccessDeniedPage
	public void forbidden() {
	}

	@Path("/loged")
	@Post
	public void form(String login, String password) throws ParseException {
		Funcionario funcionario = funcionarioDAO.findByLoginAndPassword(login,
				Util.getInstance().crypt(password));

		if (funcionario != null) {
			if (!funcionario.isIndHabilitado()) {
				usuarioComponente.setLoggedIn(true);
				usuarioComponente.setFuncionario(funcionario);
				result.redirectTo(this).index();
			} else {
				result.include("errorMsg1", "Usuário bloqueado");
				result.redirectTo(this).login();
			}
		} else {
			result.include("errorMsg1", "Usuário bloqueado");
			result.redirectTo(this).login();
		}
	}
}
