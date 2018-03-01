package br.com.projaulabanco.dados;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.PreparedStatement;

import br.com.projaulabanco.entidade.Cadastro;
import br.com.projaulabanco.util.Conexao;

public class cadastroDB {
	private Connection connection;
	
	public cadastroDB() {
		
		connection = Conexao.getConnection();
	}
	
	public boolean inserir (Cadastro cadastro) throws SQLException{
		boolean status = false;
		try {
			
			String sql = "insert into cadastro (nome, telefone) Values (?, ?)";
			PreparedStatement stmt = connection.prepareStatement(sql);
			
			stmt.setString(1, cadastro.getNome());
			stmt.setString(2, cadastro.getTelefone());
			
			stmt.execute();
			status = true;
		}catch (SQLException e) {
			System.err.println(e.toString());
			status = false;
		}finally {
			connection.close();
		}
		
		return status;
	}

}
