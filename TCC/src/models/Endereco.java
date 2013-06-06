package models;

public class Endereco {
	
	private int estado;
	
	private int cidade;
	
	private String nomeEstado;
	
	private String nomeCidade;
	
	

	public String getNomeEstado() {
		return nomeEstado;
	}

	public void setNomeEstado(String string) {
		this.nomeEstado = string;
	}

	public String getNomeCidade() {
		return nomeCidade;
	}

	public void setNomeCidade(String nomeCidade) {
		this.nomeCidade = nomeCidade;
	}

	public int getEstado() {
		return estado;
	}

	public void setEstado(int estado) {
		this.estado = estado;
	}

	public int getCidade() {
		return cidade;
	}

	public void setCidade(int cidade) {
		this.cidade = cidade;
	}
	
	

}
