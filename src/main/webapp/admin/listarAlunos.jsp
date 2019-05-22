<jsp:include page="../template/header.jsp" />

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-md-12">
		<div class="card card-plain">
			<div class="header">
				<h4 class="title">Alunos</h4>
				<p class="category">Listagem de alunos cadastrados</p>
			</div>
			<div class="content table-responsive table-full-width">
				<jsp:useBean id="aluno" class="br.com.ct.bean.AlunosBean"
					scope="page" />
				<table class="table table-hover">
					<thead>
						<th>Nome</th>
						<th>Matrícula</th>
						<th>Curso</th>
					</thead>
					<tbody>
						<c:forEach var="aluno" items="${aluno.listaAlunos }">
							<tr>
								<td>${aluno.nome }</td>
								<td>${aluno.ra }</td>
								<td>${aluno.curso.nome }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
	</div>
</div>

<jsp:include page="../template/footer.jsp" />