<%@ page import = "br.com.projaulabanco.dados.cadastroDB"%>
<%@ page import = "br.com.projaulabanco.entidade.Cadastro"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cadastrar</title>
</head>
<body>
 <%
 	String nome = request.getParameter("nome");
 	String telefone = request.getParameter("telefone");
 	
 	 Cadastro cadastro = new Cadastro();
 	 
 	cadastro.setNome(nome);
 	cadastro.setTelefone(telefone);
 	
 	if(new cadastroDB().inserir(cadastro)){
 		%> 
 			REGISTRO INSERIDO COM SUCESSO!!
 		<%
 		}%>

</body>
</html>