<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Visualiza��o de usu�rios</title>
</head>
<body>
	
	<%@ page import="com.TokioMarineCrud.dao.UsuarioDao, com.TokioMarineCrud.bean.*, java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	<h1>Listagem de Users</h1>
	
	<%
	List<Usuario> list = UsuarioDao.getAllUsuarios();
	request.setAttribute("list", list);
	%>
	
	<table border=1>
		<tr>
			<th>Id</th>
			<th>Nome</th>
			<th>Password</th>
			<th>Email</th>
			<th>Sexo</th>
			<th>Pais</th>
			<th>Editar</th>
			<th>Excluir</th>
		</tr>
		<c:forEach items="${list}" var="usuario">
			<tr>
				<td>${usuario.getId()}</td>
				<td>${usuario.getNome()}</td>
				<td>${usuario.getPassword()}</td>
				<td>${usuario.getEmail()}</td>
				<td>${usuario.getSexo()}</td>
				<td>${usuario.getPais()}</td>
				<td><a href="editform.jsp?id=${usuario.getId()}">Editar</a></td>
				<td><a href="deleteusuario.jsp?id=${usuario.getId()}">Excluir</a></td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<a href="addusuarioform.jsp">Adicionar Novo Usu�rio</a>
	
	
	
</body>
</html>