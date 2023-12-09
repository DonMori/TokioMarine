<%@page import="com.TokioMarineCrud.dao.UsuarioDao"%>
<jsp:useBean id="u" class="com.TokioMarineCrud.bean.Usuario"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
	UsuarioDao.deletarUsuario(u);
	response.sendRedirect("viewusuarios.jsp");
%>



























