package br.com.topSIS.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Telefone {

	private Long idTel;
	private String telCasa;
	private String cel;
	private Usuario usuario;
	
	@Id
	@GeneratedValue
	public Long getIdTel() {
		return idTel;
	}
	public void setIdTel(Long idTel) {
		this.idTel = idTel;
	}
	public String getTelCasa() {
		return telCasa;
	}
	public void setTelCasa(String telCasa) {
		this.telCasa = telCasa;
	}
	public String getCel() {
		return cel;
	}
	public void setCel(String cel) {
		this.cel = cel;
	}
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "fk_usuario")
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

		
	
	
}
