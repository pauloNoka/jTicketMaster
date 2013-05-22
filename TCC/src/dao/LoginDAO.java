package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import servlets.Login;
import util.Conecta;

public class LoginDAO {

	public boolean CheckLogin(String Nome, String Senha){
		
		String sql = "SELECT * FROM TKFuncionario WHERE codigo_cliente = ?";
	
	Conecta conecta = Conecta.getInstance();
	Connection conexao = conecta.getConnection();
	
	Login Login = null;
	
	try {
		PreparedStatement stmt = conexao.prepareStatement(sql);
		stmt.setString(1, Nome);
		stmt.setString(1, Senha);
		
		ResultSet rs = stmt.executeQuery();
		
		if(rs.next()){
			Login = new Login();
			/*
			Login.setCodigo_cliente(codigo);
			Login.setNome(rs.getString("nome"));
			Login.setEndereco(rs.getString("endereco"));
			c.setCidade(rs.getString("cidade"));
			c.setSexo(rs.getString("sexo"));
			c.setRenda(rs.getDouble("renda"));*/
			
			
		}
		
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	
			//return c;
	
		
		return false;	
		
	}
	
}
