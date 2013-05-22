package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Endereco;

import dao.EnderecoDAO;

/**
 * Servlet implementation class GetEstados
 */
@WebServlet("/GetEstados")
public class GetEstados extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private EnderecoDAO endereco = new EnderecoDAO();
     
	
    public GetEstados() {
        super();
        
    }

	
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		ArrayList<Endereco> estados = endereco.getEstados();
		PrintWriter out = response.getWriter();
		for(Endereco e : estados){
			
			String str = "<option value="+e.getEstado()+">"+e.getNomeEstado()+"</optiton>\r\n"; 
			out.print(str);
			
		}	
		
	}

}
