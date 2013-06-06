package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Cliente;

import dao.ClienteDAO;

/**
 * Servlet implementation class ListClient
 */
@WebServlet("/ListClient")
public class ListClient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListClient() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ClienteDAO clientedao = new ClienteDAO();
		
		ArrayList<Cliente> clientes = clientedao.listAll();
		
		request.setAttribute("rs", clientes);
		request.getRequestDispatcher("ListClient.jsp").forward(request, response);
		
	}

}
