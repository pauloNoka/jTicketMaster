package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Cliente;

import dao.ClienteDAO;

/**
 * Servlet implementation class AlterClient
 */
@WebServlet("/ListOneClient")
public class ListOneClient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListOneClient() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int CliCodigo = Integer.parseInt(request.getParameter("id"));
		
		ClienteDAO clientedao = new ClienteDAO();
		
		Cliente lista = clientedao.ListOneClient(CliCodigo);
		
		request.setAttribute("rs", lista);
		request.getRequestDispatcher("AlterClient.jsp").forward(request, response);
		
		
	}
}
