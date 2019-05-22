package br.com.ct.servlet.professor;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.ct.dao.GenericDao;
import br.com.ct.entity.Nota;

@WebServlet("/professor/cadNotas")
public class ServletCadastroNotas extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletCadastroNotas() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			int idDisciplina = Integer.parseInt(request
					.getParameter("disciplina"));
			int idAluno = Integer.parseInt(request.getParameter("aluno"));

			GenericDao<Nota> notaDao = new GenericDao<>(Nota.class);

			request.setAttribute("nota",
					notaDao.buscarNotaDoAluno(idAluno, idDisciplina));
			request.getRequestDispatcher("cadNotas.jsp").forward(request,
					response);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {

			GenericDao<Nota> notaDao = new GenericDao<>(Nota.class);

			Integer idAluno = Integer.parseInt(request.getParameter("idAluno"));
			Integer idDisciplina = Integer.parseInt(request
					.getParameter("idDisciplina"));
			
			Double aq1 = Double.parseDouble(request.getParameter("aq1"));
			Double ae1 = Double.parseDouble(request.getParameter("ae1"));
			Double aq2 = Double.parseDouble(request.getParameter("aq2"));
			Double ae2 = Double.parseDouble(request.getParameter("ae2"));
			Double aq3 = Double.parseDouble(request.getParameter("aq3"));
			Double ae3 = Double.parseDouble(request.getParameter("ae3"));
			Double aq4 = Double.parseDouble(request.getParameter("aq4"));
			Double ae4 = Double.parseDouble(request.getParameter("ae4"));
			
			Double mb1 = Double.parseDouble(request.getParameter("mb1"));
			Double mb2 = Double.parseDouble(request.getParameter("mb2"));
			Double mb3 = Double.parseDouble(request.getParameter("mb3"));
			Double mb4 = Double.parseDouble(request.getParameter("mb4"));
			
			Double ma = Double.parseDouble(request.getParameter("ma"));

			Nota nota = notaDao.buscarNotaDoAluno(idAluno, idDisciplina);
			nota.setAq1(aq1);
			nota.setAe1(ae1);
			nota.setAq2(aq2);
			nota.setAe2(ae2);
			nota.setAe3(aq3);
			nota.setAe3(ae3);
			nota.setAq4(aq4);
			nota.setAe4(ae4);
			
			nota.setMb1(mb1);
			nota.setMb2(mb2);
			nota.setMb3(mb3);
			nota.setMb4(mb4);
			
			nota.setMa(ma);

			notaDao.adicionar(nota);

			request.setAttribute("mensagem",
					"A nota do aluno foi realizada com sucesso.");
			request.getRequestDispatcher("cadNotas.jsp").forward(request,
					response);
		} catch (Exception e) {
			request.setAttribute("mensagem", "Erro: " + e.getMessage());
			request.getRequestDispatcher("cadNotas.jsp").forward(request,
					response);
		}
	}
}