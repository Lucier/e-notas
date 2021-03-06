<!doctype html>
<html lang="pt">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>e-Notas</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />


<!-- Bootstrap core CSS     -->
<link
	href="../resources/css/bootstrap.min.css"
	rel="stylesheet" />

<!-- Animation library for notifications   -->
<link
	href="../resources/css/animate.min.css"
	rel="stylesheet" />

<!--  Light Bootstrap Table core CSS    -->
<link
	href="../resources/css/light-bootstrap-dashboard.css"
	rel="stylesheet" />


<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="../resources/css/demo.css"
	rel="stylesheet" />


<!--     Fonts and icons     -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300'
	rel='stylesheet' type='text/css'>
<link
	href="../resources/css/pe-icon-7-stroke.css"
	rel="stylesheet" />

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

</head>




<body>

	<div class="wrapper">
		<div class="sidebar" data-color="green">

			<div class="sidebar-wrapper">
				<div class="logo">
					<a href="" class="simple-text"> e-Notas </a>
				</div>

				<ul class="nav">

					<!-- se for aluno -->
					<%
						if (session.getAttribute("aluno") != null) {
					%>
					<li><a href="<c:url value="/aluno/listarDisciplinas"/>"> <i
							class="pe-7s-print"></i>
							<p>Visualizar Disciplinas</p>
					</a></li>
					<!-- se for professor -->
					<%
						} else if (session.getAttribute("professor") != null) {
					%>
					<li><a href="<c:url value="/professor/listarDisciplinas"/>"> <i
							class="pe-7s-paperclip"></i>
							<p>Listar Disciplinas</p>
					</a></li>
					<!-- se for admin -->
					<%
						} else {
					%>

					<li><a href="<c:url value="/admin/cadEscola"/>">
							<p>Cadastrar Escola</p>
					</a></li>
					<li><a href="<c:url value="/admin/cadCurso"/>">
							<p>Cadastrar Curso</p>
					</a></li>
					<li><a href="<c:url value="/admin/cadDisciplina"/>">
							<p>Cadastrar Disciplina</p>
					</a></li>
					<li><a href="<c:url value="/admin/cadCursoDisciplina"/>">
							<p>Curso -> Disciplina</p>
					</a></li>
					<li><a href="<c:url value="/admin/cadProfessor"/>">
							<p>Cadastrar Professor</p>
					</a></li>
					<li><a href="<c:url value="/admin/cadProfessorDisciplina"/>">
							<p>Professor -> Disciplina</p>
					</a></li>
					<li><a href="<c:url value="/admin/cadAluno" />">
							<p>Cadastrar Aluno</p>
					</a></li>
					<li><a href="<c:url value="/admin/listarEscolas"/>">
							<p>Listar Escolas</p>
					</a></li>
					<li><a href="<c:url value="/admin/listarAlunos"/>">
							<p>Listar Alunos</p>
					</a></li>
					<li><a href="<c:url value="/admin/listarCursos"/>">
							<p>Listar Cursos</p>
					</a></li>
					<li><a href="<c:url value="/admin/listarDisciplinas"/>">
							<p>Listar Disciplinas</p>
					</a></li>


					<%
						}
					%>

				</ul>
			</div>
		</div>

		<div class="main-panel">
			<nav class="navbar navbar-default navbar-fixed">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#navigation-example-2">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">e-Notas</a>
					</div>
					<div class="collapse navbar-collapse">

						<ul class="nav navbar-nav navbar-right">
							<li><a href="<c:url value="/logout"/>"> Sair </a></li>
						</ul>
					</div>
				</div>
			</nav>

			<div class="content">
				<div class="container-fluid">