package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Cliente;

/**
 * Servlet implementation class NewClient
 */
@WebServlet("/NewClient")
public class NewClient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewClient() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Cliente cliente = new Cliente();	
		
		String nome = request.getParameter("cliente");
		String sexo = request.getParameter("sexo");
		String endereco = request.getParameter("endereco");
		String cidade = request.getParameter("cidade");
		double renda = Double.parseDouble(request.getParameter("renda"));
		
	}

}
