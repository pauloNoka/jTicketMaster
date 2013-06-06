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

import dao.EnderecoDAO;

/**
 * Servlet implementation class GetCidades
 */
@WebServlet("/GetEstados")
public class GetEstados extends HttpServlet {
	private static final long serialVersionUID = 1L;
    EnderecoDAO endereco = new EnderecoDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetEstados() {
        super();
        // TODO Auto-generated constructor stub
    }

	
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
    	ArrayList<Endereco> estados = endereco.getEstados();
		response.setContentType ("application/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<option value=\"0\">escolha um estado...</optiton>\r\n");
		for(Endereco e : estados){
			
			String str = "<option value=\""+e.getEstado()+"\">"+e.getNomeEstado()+"</optiton>\r\n"; 
			out.print(str);
			
		}	
	}

}
