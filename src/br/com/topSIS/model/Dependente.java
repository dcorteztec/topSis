package br.com.topSIS.model;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Dependente {

	private Long idDependente;
	private String nome;
	private Date dataNasc;
	private Contratante contratante;
	private String dateEdit;

	@Id
	@GeneratedValue
	public Long getIdDependente() {
		return idDependente;
	}

	public void setIdDependente(Long idDependente) {
		this.idDependente = idDependente;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Date getDataNasc() {
		return dataNasc;
	}

	public void setDataNasc(Date dataNasc) {
		this.dataNasc = dataNasc;
	}

	@ManyToOne(optional = true)
	@JoinColumn(name = "fk_contratante")
	public Contratante getContratante() {
		return contratante;
	}

	public void setContratante(Contratante contratante) {
		this.contratante = contratante;
	}

	public String getDateEdit() {
		SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("dd/MM/yyyy");
		if (getDataNasc() != null) {
			dateEdit = DATE_FORMAT.format(getDataNasc());
		}
		return dateEdit;
	}

	public void setDateEdit(String dateEdit) {
		this.dateEdit = dateEdit;
	}

}
