package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import models.Endereco;

import util.Conecta;

public class EnderecoDAO extends Endereco{
	
	@SuppressWarnings("null")
	public LinkedList getEstados(){
		
		String sql = "SELECT * FROM Estados";
		
		LinkedList ll = new LinkedList();
		
		Conecta conecta = Conecta.getInstance();
		Connection conexao = conecta.getConnection();

		Endereco end = null;
		try {
			PreparedStatement stmt = conexao.prepareStatement(sql);
			
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next())
			{
				end.setEstado(rs.getInt("IdEstado"));
				end.setNomeEstado(rs.getString("Nome"));
				ll.add(end);
				
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return ll;
	}
}
