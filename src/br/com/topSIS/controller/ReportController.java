package br.com.topSIS.controller;

import javax.servlet.http.HttpServletResponse;

import net.diegomaia.vraptor.saci.annotation.LoggedIn;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.core.RequestInfo;
import br.com.topSIS.DAO.interfaces.ContratanteDAO;
import br.com.topSIS.componente.UsuarioComponente;

@Resource
@LoggedIn
public class ReportController {

	private final HttpServletResponse response;
	private final Result result;
	private final RequestInfo info;
	private final UsuarioComponente usuarioComponente;
	private final ContratanteDAO contratanteDAO;

	public ReportController(HttpServletResponse response,
			Result result, RequestInfo info,
			UsuarioComponente usuarioComponente, ContratanteDAO contratanteDAO) {
		this.response = response;
		this.result = result;
		this.info = info;
		this.usuarioComponente = usuarioComponente;
		this.contratanteDAO = contratanteDAO;
		
	}

}
