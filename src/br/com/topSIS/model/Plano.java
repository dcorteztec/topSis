package br.com.topSIS.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Plano {

	private Long idPlano;
	private String nomePlano;
	private Integer qtdDependente;
	private Double valor;
	private Contratante contratante;

	@Id
	@GeneratedValue
	public Long getIdPlano() {
		return idPlano;
	}

	public void setIdPlano(Long idPlano) {
		this.idPlano = idPlano;
	}

	public String getNomePlano() {
		return nomePlano;
	}

	public void setNomePlano(String nomePlano) {
		this.nomePlano = nomePlano;
	}

	public Integer getQtdDependente() {
		return qtdDependente;
	}

	public void setQtdDependente(Integer qtdDependente) {
		this.qtdDependente = qtdDependente;
	}

	public Double getValor() {
		return valor;
	}

	public void setValor(Double valor) {
		this.valor = valor;
	}

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "fk_usuario")
	public Contratante getContratante() {
		return contratante;
	}

	public void setContratante(Contratante contratante) {
		this.contratante = contratante;
	}

}
