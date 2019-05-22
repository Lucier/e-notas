<jsp:include page="../template/header.jsp" />

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-md-12">
		<div class="card card-plain">
			<div class="header">
				<h4 class="title">Aluno</h4>
				<p class="category">Listagem de Notas do Aluno</p>
			</div>
			<div class="content table-responsive table-full-width">

				<table class="table table-hover">
					<thead>
						<th>1ª AQ</th>
						<th>1ª AE</th>
						<th>MB 1º Bim</th>
						<th>2ª AQ</th>
						<th>2ª AE</th>
						<th>MB 2º Bim</th>
						<th>3ª AQ</th>
						<th>3ª AE</th>
						<th>MB 3º Bim</th>
						<th>4ª AQ</th>
						<th>4ª AE</th>
						<th>MB 4º Bim</th>
						<th>MA</th>
						<th>Status</th>
					</thead>
					<tbody>
						<tr>
							<td><c:out value="${notas.aq1}" /></td>
							<td><c:out value="${notas.ae1}" /></td>
							<td><c:out value="${notas.mb1}" /></td>
							<td><c:out value="${notas.aq2}" /></td>
							<td><c:out value="${notas.ae2}" /></td>
							<td><c:out value="${notas.mb2}" /></td>
							<td><c:out value="${notas.aq3}" /></td>
							<td><c:out value="${notas.ae3}" /></td>
							<td><c:out value="${notas.mb3}" /></td>
							<td><c:out value="${notas.aq4}" /></td>
							<td><c:out value="${notas.ae4}" /></td>
							<td><c:out value="${notas.mb4}" /></td>
							<td><c:out value="${notas.ma}" /></td>
							<td><c:out value="${notas.aprovado ? 'Aprovado' : 'Reprovado'}" /></td>
						</tr>
					</tbody>
				</table>

			</div>
		</div>
	</div>
</div>


<jsp:include page="../template/footer.jsp" />