package br.com.topSIS.model;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;

@Entity
@PrimaryKeyJoinColumn(name = "matricula")
public class Funcionario extends Usuario{

	private String senha;
	private String login;
    private Integer roles;	
	
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public Integer getRoles() {
		return roles;
	}
	public void setRoles(Integer roles) {
		this.roles = roles;
	}

	
	
}
