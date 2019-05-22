<jsp:include page="../template/header.jsp" />

<div class="row">
	<div class="col-md-12">
		<div class="card">
			<div class="header">
				<h4 class="title">Cadastrar Notas</h4>
			</div>
			<div class="content">
				<form action="cadNotas" method="post">

					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>Aluno(a)</label> <input type="text"
									class="form-control" value="${nota.aluno.id}" name="idAluno"
									readonly="readonly">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>Disciplina</label> <input type="text"
									class="form-control" value="${nota.disciplina.id}"
									name="idDisciplina" readonly="readonly">
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-1">
							<div class="form-group">
								<label>1ª AQ</label> <input type="text"
									class="form-control" placeholder="1ª AQ"
									value="${nota.aq1}" name="aq1">
							</div>
						</div>
						<div class="col-md-1">
							<div class="form-group">
								<label>1º AE</label> <input type="text" class="form-control"
									placeholder="1ª AQ" value="${nota.ae1}"
									name="ae1">
							</div>
						</div>
						<div class="col-md-1">
							<div class="form-group">
								<label>MB 1ª Bim</label> <input type="text" class="form-control"
									placeholder="MB" name="mb1" value="${nota.mb1}">
							</div>
						</div>
						<div class="col-md-1">
							<div class="form-group">
								<label>2ª AQ</label> <input type="text" class="form-control"
									placeholder="2ª AQ" value="${nota.aq2}"
									name="aq2">
							</div>
						</div>
						<div class="col-md-1">
							<div class="form-group">
								<label>2ª AE</label> <input type="text" class="form-control"
									placeholder="2ª AE" value="${nota.ae2}"
									name="ae2">
							</div>
						</div>
						<div class="col-md-1">
							<div class="form-group">
								<label>MB 2º Bim</label> <input type="text" class="form-control"
									placeholder="MB" name="mb2" value="${nota.mb2}">
							</div>
						</div>
						
						<div class="col-md-1">
							<div class="form-group">
								<label>3ª AQ</label> <input type="text" class="form-control"
									placeholder="3ª AQ" value="${nota.aq3}"
									name="aq3">
							</div>
						</div>
						<div class="col-md-1">
							<div class="form-group">
								<label>3ª AE</label> <input type="text" class="form-control"
									placeholder="3ª AE" value="${nota.ae3}"
									name="ae3">
							</div>
						</div>
						<div class="col-md-1">
							<div class="form-group">
								<label>MB 3º Bim</label> <input type="text" class="form-control"
									placeholder="MB" name="mb3" value="${nota.mb3}">
							</div>
						</div>
						
						
						<div class="col-md-1">
							<div class="form-group">
								<label>4ª AQ</label> <input type="text" class="form-control"
									placeholder="4ª AQ" value="${nota.aq4}"
									name="aq4">
							</div>
						</div>
						<div class="col-md-1">
							<div class="form-group">
								<label>4ª AE</label> <input type="text" class="form-control"
									placeholder="4ª AE" value="${nota.ae4}"
									name="ae4">
							</div>
						</div>
						<div class="col-md-1">
							<div class="form-group">
								<label>MB 4º Bim</label> <input type="text" class="form-control"
									placeholder="MB" name="mb4" value="${nota.mb4}">
							</div>
						</div>
						
						<div class="col-md-1">
							<div class="form-group">
								<label>MA</label> <input type="text" class="form-control"
									placeholder="MA" name="ma" value="${nota.ma}">
							</div>
						</div>
					</div>

					<input type="submit" class="btn btn-secondary btn-fill pull-right"
						value="Cadastrar" />
					<div class="clearfix"></div>

				</form>

				${mensagem}

			</div>
		</div>
	</div>

</div>

<jsp:include page="../template/footer.jsp" />