package br.com.topSIS.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource
public class IndexController {
	
	private final Result result;

	public IndexController(Result result) {
       this.result = result;
	}

	@Path("/")
	@Get
	public void index() {

	}
}