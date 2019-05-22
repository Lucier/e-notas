package br.com.ct.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "nota")
public class Nota implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	private Integer id;

	@Column(name = "AQ1")
	private Double aq1;

	@Column(name = "AE1")
	private Double ae1;

	@Column(name = "AQ2")
	private Double aq2;

	@Column(name = "AE2")
	private Double ae2;

	@Column(name = "AQ3")
	private Double aq3;

	@Column(name = "AE3")
	private Double ae3;

	@Column(name = "AQ4")
	private Double aq4;

	@Column(name = "AE4")
	private Double ae4;

	@Column(name = "MB1")
	private Double mb1;

	@Column(name = "MB2")
	private Double mb2;

	@Column(name = "MB3")
	private Double mb3;

	@Column(name = "MB4")
	private Double mb4;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "IDALUNO", referencedColumnName = "id")
	private Aluno aluno;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "IDDISCIPLINA", referencedColumnName = "id")
	private Disciplina disciplina;

	@Column(name = "MA")
	private Double ma = 0.0;

	@Transient
	private boolean aprovado = false;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Double getAq1() {
		return aq1;
	}

	public void setAq1(Double aq1) {
		this.aq1 = aq1;
	}

	public Double getAe1() {
		return ae1;
	}

	public void setAe1(Double ae1) {
		this.ae1 = ae1;
	}

	public Double getAq2() {
		return aq2;
	}

	public void setAq2(Double aq2) {
		this.aq2 = aq2;
	}

	public Double getAe2() {
		return ae2;
	}

	public void setAe2(Double ae2) {
		this.ae2 = ae2;
	}

	public Double getAq3() {
		return aq3;
	}

	public void setAq3(Double aq3) {
		this.aq3 = aq3;
	}

	public Double getAe3() {
		return ae3;
	}

	public void setAe3(Double ae3) {
		this.ae3 = ae3;
	}

	public Double getAq4() {
		return aq4;
	}

	public void setAq4(Double aq4) {
		this.aq4 = aq4;
	}

	public Double getAe4() {
		return ae4;
	}

	public void setAe4(Double ae4) {
		this.ae4 = ae4;
	}

	public Double getMb1() {
		double mb1 = (aq1 + ae1) / 2;
		return mb1;
	}

	public void setMb1(Double mb1) {
		this.mb1 = mb1;
	}

	public Double getMb2() {
		double mb2 = (aq2 + ae2) / 2;
		return mb2;
	}

	public void setMb2(Double mb2) {
		this.mb2 = mb2;
	}

	public Double getMb3() {
		double mb3 = (aq3 + ae3) / 2;
		return mb3;
	}

	public void setMb3(Double mb3) {
		this.mb3 = mb3;
	}

	public Double getMb4() {
		double mb4 = (aq4 + ae4) / 2;
		return mb4;
	}

	public void setMb4(Double mb4) {
		this.mb4 = mb4;
	}

	public Double getMa() {
		double mb1 = (aq1 + ae1) / 2;
		double mb2 = (aq2 + ae2) / 2;
		double mb3 = (aq3 + ae3) / 2;
		double mb4 = (aq4 + ae4) / 2;

		double ma = (mb1 + mb2 + mb3 + mb4) / 4;

		if (ma >= 6) {
			this.aprovado = true;
		} else {
			this.aprovado = false;
		}
		return ma;
	}

	public void setMa(Double ma) {
		this.ma = ma;
	}

	public Aluno getAluno() {
		return aluno;
	}

	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}

	public Disciplina getDisciplina() {
		return disciplina;
	}

	public void setDisciplina(Disciplina disciplina) {
		this.disciplina = disciplina;
	}

	public boolean isAprovado() {
		return aprovado;
	}

	public String getAprovadoDescricao() {
		if (aprovado = false)
			return "Reprovado";
		else
			return "Aprovado";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Nota other = (Nota) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

}
