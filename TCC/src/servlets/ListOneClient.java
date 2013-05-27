package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Cliente;
import models.Endereco;
import dao.ClienteDAO;
import dao.EnderecoDAO;

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
		
		EnderecoDAO endereco = new EnderecoDAO();
		
		Cliente lista = clientedao.ListOneClient(CliCodigo);
		
		ArrayList<Endereco> listaEstados = endereco.getEstados();
		System.out.println("IdEstado: "+lista.getIdEstado());
		ArrayList<Endereco> listaCidades = endereco.getCidades(lista.getIdEstado());
		
		request.setAttribute("rs", lista);
		request.setAttribute("estados", listaEstados);
		request.setAttribute("cidades", listaCidades);
		request.getRequestDispatcher("AlterClient.jsp").forward(request, response);
		
		
	}
}
