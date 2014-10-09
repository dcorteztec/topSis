package br.com.topSIS.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Transient;

@Entity
@PrimaryKeyJoinColumn(name = "matricula")
public class Contratante extends Usuario {

	private String foto;
	private Set<Dependente> dependentes;
	private Long[] idDependente;
	private Date dataCadastro;
	private String[] dependente;
	private String[] dataNascimento;
	private Plano plano;
	private String dataTable;
	private String funcionario;

	@Lob
	public String  getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "contratante")
	public Set<Dependente> getDependentes() {
		return dependentes;
	}

	public void setDependentes(Set<Dependente> dependentes) {
		this.dependentes = dependentes;
	}

	public Date getDataCadastro() {
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm");
		setDataTable(dateFormat.format(dataCadastro));
		return dataCadastro;
	}

	public void setDataCadastro(Date dataCadastro) {
		this.dataCadastro = dataCadastro;
	}

	@Transient
	public String[] getDependente() {
		return dependente;
	}

	public void setDependente(String[] dependente) {
		this.dependente = dependente;
	}

	@Transient
	public String[] getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(String[] dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	@OneToOne(mappedBy = "contratante", cascade = CascadeType.ALL)
	public Plano getPlano() {
		return plano;
	}

	public void setPlano(Plano plano) {
		this.plano = plano;
	}

	@Transient
	public String getDataTable() {
		getDataCadastro();
		return dataTable;
	}

	public void setDataTable(String dataTable) {
		this.dataTable = dataTable;
	}

	@Transient
	public Long[] getIdDependente() {
		return idDependente;
	}

	public void setIdDependente(Long[] idDependente) {
		this.idDependente = idDependente;
	}

	public String getFuncionario() {
		return funcionario;
	}

	public void setFuncionario(String funcionario) {
		this.funcionario = funcionario;
	}

}
