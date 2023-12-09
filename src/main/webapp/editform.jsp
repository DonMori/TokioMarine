<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edição de Usuários</title>
</head>
<body>
	
	<%@page import="com.TokioMarineCrud.bean.Usuario, com.TokioMarineCrud.dao.UsuarioDao" %>
	
	<%
		String id = request.getParameter("id");
		Usuario usuario = UsuarioDao.getRegistroById(Integer.parseInt(id));
	%>

	
	<h1>Edição de Usuários</h1>
	
	<form action="editusuario.jsp" method="post">
		<input type="hidden" name="id" value="<%=usuario.getId()%>"/>
		<table>
			<tr>
				<td>Nome: </td>
				<td><input type="text" name="nome" value="<%=usuario.getNome()%>"/></td>
			</tr>
			<tr>
				<td>Password: </td>
				<td><input type="password" name="password" value="<%=usuario.getPassword()%>"/></td>
			</tr>
			<tr>
				<td>Email: </td>
				<td><input type="email" name="email" value="<%=usuario.getEmail()%>"/></td>
			</tr>
			<tr>
				<td>Sexo: </td>
				<td><input type="radio" name="sexo" value="Masculino"/>Masculino
					<input type="radio" name="sexo" value="Feminino"/>Feminino
					<input type="radio" name="sexo" value="Outro"/>Outro
				</td>
			</tr>
			<tr>
				<td>País: </td>
				<td>
					<select name="pais">
						<option>Brasil</option>
						<option>EUA</option>
						<option>Portugal</option>
						<option>Argentina</option>
						<option>Outro</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Editar usuário"></input></td>
			</tr>
		</table>
	</form>	
	
	
	
	
	
	
	


</body>
</html>