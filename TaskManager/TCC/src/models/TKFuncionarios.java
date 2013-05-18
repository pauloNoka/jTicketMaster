package models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.NamedQuery;

@Entity
@Table(name="TKFuncionarios")
public class TKFuncionarios {
	
	@Id 
	@GeneratedValue
	private int FunCodigo;
	private int FunTipo;
	private String FunNome;
	private String FunSexo;
	private String FunNascimento;
	private String FunCpf;
	private String FunRg;
	private String FunTelefone;
	private String FunCelular;
	private String FunEndereco;
	private int FunNumeroEndereco;
	private String FunBairro;
	
	private int IdCidade;
	private String FunCep;
	private String FunEmail;
	private String FunLogin;
	private String FunSenha;
	
	
	public int getFunCodigo() {
		return FunCodigo;
	}
	public void setFunCodigo(int funCodigo) {
		FunCodigo = funCodigo;
	}
	public int getFunTipo() {
		return FunTipo;
	}
	public void setFunTipo(int funTipo) {
		FunTipo = funTipo;
	}
	public String getFunNome() {
		return FunNome;
	}
	public void setFunNome(String funNome) {
		FunNome = funNome;
	}
	public String getFunSexo() {
		return FunSexo;
	}
	public void setFunSexo(String funSexo) {
		FunSexo = funSexo;
	}
	public String getFunNascimento() {
		return FunNascimento;
	}
	public void setFunNascimento(String funNascimento) {
		FunNascimento = funNascimento;
	}
	public String getFunCpf() {
		return FunCpf;
	}
	public void setFunCpf(String funCpf) {
		FunCpf = funCpf;
	}
	public String getFunRg() {
		return FunRg;
	}
	public void setFunRg(String funRg) {
		FunRg = funRg;
	}
	public String getFunTelefone() {
		return FunTelefone;
	}
	public void setFunTelefone(String funTelefone) {
		FunTelefone = funTelefone;
	}
	public String getFunCelular() {
		return FunCelular;
	}
	public void setFunCelular(String funCelular) {
		FunCelular = funCelular;
	}
	public String getFunEndereco() {
		return FunEndereco;
	}
	public void setFunEndereco(String funEndereco) {
		FunEndereco = funEndereco;
	}
	public int getFunNumeroEndereco() {
		return FunNumeroEndereco;
	}
	public void setFunNumeroEndereco(int funNumeroEndereco) {
		FunNumeroEndereco = funNumeroEndereco;
	}
	public String getFunBairro() {
		return FunBairro;
	}
	public void setFunBairro(String funBairro) {
		FunBairro = funBairro;
	}
	public int getIdCidade() {
		return IdCidade;
	}
	public void setIdCidade(int idCidade) {
		IdCidade = idCidade;
	}
	public String getFunCep() {
		return FunCep;
	}
	public void setFunCep(String funCep) {
		FunCep = funCep;
	}
	public String getFunEmail() {
		return FunEmail;
	}
	public void setFunEmail(String funEmail) {
		FunEmail = funEmail;
	}
	public String getFunLogin() {
		return FunLogin;
	}
	public void setFunLogin(String funLogin) {
		FunLogin = funLogin;
	}
	public String getFunSenha() {
		return FunSenha;
	}
	public void setFunSenha(String funSenha) {
		FunSenha = funSenha;
	}	
	
}
