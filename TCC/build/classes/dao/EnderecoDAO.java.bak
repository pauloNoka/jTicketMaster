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
		String sql = "SELECT * FROM Cidade WHERE cod_estado = ?";

		Conecta conecta = Conecta.getInstance();
		Connection conexao = conecta.getConnection();

		try {
			
			PreparedStatement stmt = conexao.prepareStatement(sql);
			stmt.setInt(1, cod_estado);
			
			ResultSet rs = stmt.executeQuery();

			Endereco end = null;

			while (rs.next()) {
				end = new Endereco();

				end.setEstado(rs.getInt("cod_cidade"));
				end.setNomeEstado(rs.getString("nom_cidade"));
				ll.add(end);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			ll.add(null);
		}

		return ll;
	}
}
