<h1>Cadastrar Novo Usu�rio</h1>

<form action="addusuario.jsp" method="post">
	<table>
		<tr>
			<td>Nome:</td>
			<td><input type="text" name="nome"/></td>
		</tr>
		<tr>
			<td>Senha:</td>
			<td><input type="password" name="password"/></td>
		</tr>
		<tr>
			<td>Email:</td>
			<td><input type="email" name="email"/></td>
		</tr>
		<tr>
			<td>Sexo:</td>
			<td><input type="radio" name="sexo" value="masculino"/>Masculino
				<input type="radio" name="sexo" value="feminino"/>Feminino
				<input type="radio" name="sexo" value="outro"/>Outro
			</td>
		</tr>
		<tr>
			<td>Pa�s:</td>
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
			<td colspan="2">
				<input type="submit" value="Adicionar Usu�rio"/>
			</td>
		</tr>
		
		
		
	</table>
</form>


























