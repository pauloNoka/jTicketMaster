package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.sql.ResultSet;

import models.Cliente;
import util.Conecta;

public class ClienteDAO {

	public void insert(Cliente cliente) {
		String sql = "INSERT INTO TKClientes "
				+ "(CliLogin, CliNome, CliSexo, CliNascimento, CliCpf, CliCnpj, CliRg, CliTelefone, CliCelular, CliEndereco, CliNumeroEndereco, CliBairro, IdCidade, CliEmail, CliSenha) VALUES "
				+ "(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		Conecta conecta = Conecta.getInstance();
		Connection conexao = conecta.getConnection();

		try {
			
			//String teste = "12-12-12";
			//String array[] = teste.split("-");

			
			DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy"); 
			Date cliNascimento;
			cliNascimento = new Date(dateFormat.parse(cliente.getCliNascimento()).getTime());
			
			
			PreparedStatement stmt = conexao.prepareStatement(sql);
			stmt.setString(1, cliente.getCliUsuario());
			stmt.setString(2, cliente.getCliNome());
			stmt.setString(3, cliente.getCliSexo());
			stmt.setDate(4, cliNascimento);
			stmt.setString(5, cliente.getCliCpf().replaceAll("\\D", ""));
			stmt.setString(6, cliente.getCliCnpj());
			stmt.setString(7, cliente.getCliRg());
			stmt.setString(8, cliente.getCliTelefone());
			stmt.setString(9, cliente.getCliCelular());
			stmt.setString(10, cliente.getCliEndereco());
			stmt.setInt(11, cliente.getCliNumeroEndereco());
			stmt.setString(12, cliente.getCliBairro());
			stmt.setInt(13, cliente.getIdCidade());
			stmt.setString(14, cliente.getCliEmail());
			stmt.setString(15, cliente.getCliSenha());
			
			
			stmt.executeUpdate();
			
		} catch (ParseException e) {
			
			e.printStackTrace();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		}

	}
	
	public ArrayList<Cliente> listAll()
	{
		ArrayList<Cliente> lista = new ArrayList<Cliente>();
		
		String sql = "SELECT * FROM TKclientes";
		
		Conecta conecta = Conecta.getInstance();
		Connection conexao = conecta.getConnection();
		
		try 
		{
		  java.sql.Statement stmt = conexao.createStatement();	
		  ResultSet rs = (ResultSet) stmt.executeQuery(sql);
		  
		  Cliente c = null;
		  
		  while(rs.next())
		  {
			  c = new Cliente();
			  c.setCliCodigo(rs.getInt("CliCodigo"));
			  c.setCliUsuario(rs.getString("CliLogin"));
			  c.setCliNome(rs.getString("CliNome"));
			  c.setCliEmail(rs.getString("CliEmail"));
			  c.setCliTelefone(rs.getString("CliTelefone"));
			  
			  lista.add(c);
		  }
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		
		return lista;
	}
	
	public void delete(int CliCodigo){
		
		String sql = "DELETE FROM TKClientes " +
				"WHERE CliCodigo = ?";
		
		Conecta conecta = Conecta.getInstance();
		Connection conexao = conecta.getConnection();
		
		
		try {
			
			PreparedStatement stmt = conexao.prepareStatement(sql);
			stmt.setInt(1, CliCodigo);
			
			stmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public Cliente ListOneClient(int CliCodigo){
		
		String sql = "SELECT TKCLI.*, TKEst.cod_estado AS IdEstado "+
					 "FROM TKClientes AS TKCli "+
					 "INNER JOIN cidade AS TKCid "+
					 "ON TKCid.cod_cidade = TKCli.IdCidade "+
					 "INNER JOIN estado AS TKEst "+
					 "ON TKEst.cod_estado = TKCid.cod_estado "+
					 "WHERE CliCodigo = ?";
		System.out.println(sql);
		Conecta conecta = Conecta.getInstance();
		Connection conexao = conecta.getConnection();
		
		Cliente c = null;
		
		try {
			PreparedStatement stmt = conexao.prepareStatement(sql);
			stmt.setInt(1, CliCodigo);
			
			ResultSet rs = stmt.executeQuery();
			
			if(rs.next()){
				c = new Cliente();
				
				DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
				String cliNascimento = dateFormat.format(rs.getDate("CliNascimento"));
				
				c.setCliCodigo(CliCodigo);
				c.setCliUsuario(rs.getString("CliLogin"));
				c.setCliNome(rs.getString("CliNome"));
				c.setCliSexo(rs.getString("CliSexo"));
				c.setCliTelefone(rs.getString("CliTelefone"));
				c.setCliCelular(rs.getString("CliCelular"));
				c.setCliEndereco(rs.getString("CliEndereco"));
				c.setCliNumeroEndereco(rs.getInt("CliNumeroEndereco"));
				c.setCliBairro(rs.getString("CliBairro"));
				c.setCliCep(rs.getString("CliCep"));
				c.setIdCidade(rs.getInt("IdCidade"));
				c.setIdEstado(rs.getInt("IdEstado"));
				c.setCliEmail(rs.getString("CliEmail"));
				c.setCliNascimento(rs.getString("CliNascimento"));
				c.setCliRg(rs.getString("CliRg"));
				c.setCliCpf(rs.getString("CliCpf"));
				c.setCliCnpj(rs.getString("CliCnpj"));
				
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
				return c;
		
	}
	
	public void update(Cliente cliente){
		
		String sql = "UPDATE TKClientes SET"
				+ " CliLogin = ?, CliNome = ?, CliSexo = ?, CliNascimento = ?, CliCpf = ?, CliCnpj = ?, CliRg = ?, CliTelefone = ?, CliCelular = ?, CliEndereco = ?, CliNumeroEndereco = ?, CliBairro = ?, IdCidade = ?, CliEmail = ?, CliCep = ? WHERE CliCodigo = ?";
		

		Conecta conecta = Conecta.getInstance();
		Connection conexao = conecta.getConnection();
		
		
		try {
			
			DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy"); 
			Date cliNascimento;
			cliNascimento = new Date(dateFormat.parse(cliente.getCliNascimento()).getTime());
			
			PreparedStatement stmt = conexao.prepareStatement(sql);
			stmt.setString(1, cliente.getCliUsuario());
			stmt.setString(2, cliente.getCliNome());
			stmt.setString(3, cliente.getCliSexo());
			stmt.setDate(4, cliNascimento);
			stmt.setString(5, cliente.getCliCpf().replaceAll("\\D", ""));
			stmt.setString(6, cliente.getCliCnpj());
			stmt.setString(7, cliente.getCliRg());
			stmt.setString(8, cliente.getCliTelefone());
			stmt.setString(9, cliente.getCliCelular());
			stmt.setString(10, cliente.getCliEndereco());
			stmt.setInt(11, cliente.getCliNumeroEndereco());
			stmt.setString(12, cliente.getCliBairro());
			stmt.setInt(13, cliente.getIdCidade());
			stmt.setString(14, cliente.getCliEmail());
			stmt.setString(15, cliente.getCliCep());
			stmt.setInt(16, cliente.getCliCodigo());
			
			stmt.executeUpdate();
			
		
		} catch (ParseException e) {
			
			e.printStackTrace();
			
		} catch (SQLException e) {
		
			e.printStackTrace();
			
		}
		
	}
	
}
