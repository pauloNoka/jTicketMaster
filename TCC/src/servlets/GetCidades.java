package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EnderecoDAO;

import models.Endereco;

/**
 * Servlet implementation class GetCidades
 */
@WebServlet("/GetCidades")
public class GetCidades extends HttpServlet {
	private static final long serialVersionUID = 1L;
    EnderecoDAO endereco = new EnderecoDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetCidades() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int cod_estado = Integer.parseInt(request.getParameter("cod_estado"));
		response.setContentType ("application/html; charset=UTF-8");
		ArrayList<Endereco> estados = endereco.getCidades(cod_estado);
		PrintWriter out = response.getWriter();
		out.print("<option value=\"0\">escolha uma cidade...</optiton>\r\n");
		for(Endereco e : estados){
			
			String str = "<option value="+e.getEstado()+">"+e.getNomeEstado()+"</optiton>\r\n"; 
			out.print(str);
			
		}	
	}

}
