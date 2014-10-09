package br.com.topSIS.componente;
import java.util.ArrayList;
import java.util.List;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.SessionScoped;
import br.com.topSIS.model.Funcionario;
import net.diegomaia.vraptor.saci.interfaces.Profile;;

@Component
@SessionScoped
public class UsuarioComponente implements Profile{

	private boolean loggedIn = false;
	private Funcionario funcionario;
	
	@Override
	public int getAccessLevel() {
		return 0;
	}

	@Override
	public List<String> getRoles() {
		  List<String> roles = new ArrayList<String>();
	        if(funcionario.getRoles().equals(1)){
	        	 roles.add("ADMINISTRADOR");
	        }else{
	        	roles.add("FUNCIONARIO");
	        }
	        return roles;
	}

	public Funcionario getFuncionario() {
		return funcionario;
	}

	public void setFuncionario(Funcionario funcionario) {
		this.funcionario = funcionario;
	}

	public void setLoggedIn(boolean loggedIn) {
		this.loggedIn = loggedIn;
	}

	public boolean isLoggedIn() {
		return loggedIn;
	}

}
