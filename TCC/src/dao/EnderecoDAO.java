package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import models.Endereco;
import util.Conecta;

public class EnderecoDAO {

	public ArrayList<Endereco> getEstados() {

		ArrayList<Endereco> ll = new ArrayList<Endereco>();

		String sql = "SELECT * FROM Estado";

		Conecta conecta = Conecta.getInstance();
		Connection conexao = conecta.getConnection();

		try {
			java.sql.Statement stmt = conexao.createStatement();
			ResultSet rs = (ResultSet) stmt.executeQuery(sql);

			Endereco end = null;

			while (rs.next()) {
				end = new Endereco();
//				System.out.println(rs.getInt("cod_estado"));
//				System.out.println(rs.getString("nom_estado"));
				end.setEstado(rs.getInt("cod_estado"));
				end.setNomeEstado(rs.getString("nom_estado"));
				ll.add(end);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			ll.add(null);
		}

		return ll;
	}

	public ArrayList<Endereco> getCidades(int cod_estado) {

		ArrayList<Endereco> ll = new ArrayList<Endereco>();
		String sql = "SELECT * FROM cidade WHERE cod_estado = ?";
		
		Conecta conecta = Conecta.getInstance();
		Connection conexao = conecta.getConnection();

		try {
			
			PreparedStatement stmt = conexao.prepareStatement(sql);
			stmt.setInt(1, cod_estado);
			
			ResultSet rs = stmt.executeQuery();

			Endereco end = null;

			while (rs.next()) {
				end = new Endereco();
				System.out.println(rs.getInt("cod_cidade")+"\r\n");
				System.out.println(rs.getString("nom_cidade"));
				end.setCidade(rs.getInt("cod_cidade"));
				end.setNomeCidade(rs.getString("nom_cidade"));
				ll.add(end);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			ll.add(null);
		}

		return ll;
	}
	
	public Endereco getCidade(int cod_cidade) {

		Endereco ll = new Endereco();
		String sql = "SELECT * FROM Cidade WHERE cod_cidade = ?";

		Conecta conecta = Conecta.getInstance();
		Connection conexao = conecta.getConnection();
		Endereco end = null;
		
		try {
			
			PreparedStatement stmt = conexao.prepareStatement(sql);
			stmt.setInt(1, cod_cidade);
			
			ResultSet rs = stmt.executeQuery();
			
			if(rs.next()){
				end = new Endereco();

				end.setEstado(rs.getInt("cod_estado"));
				end.setCidade(rs.getInt("cod_cidade"));
				end.setNomeEstado(rs.getString("nom_cidade"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return ll;
	}
}
