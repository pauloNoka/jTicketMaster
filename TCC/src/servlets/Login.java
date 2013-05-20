package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.LoginDAO;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Login() {
        super();

    }
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	    String Usuario = request.getParameter("Usuario");
	    String Senha = request.getParameter("Senha");
	    
	    	LoginDAO logindao = new LoginDAO();
	    
	    	HttpSession session = request.getSession();
	    	
	    if (logindao.CheckLogin(Usuario, Senha) == true) {
	      
	    		session.setAttribute(Usuario, Usuario);
	    		session.setAttribute(Senha, Senha);
	    	
	    		response.sendRedirect("index.jsp");
	    		
	    }
	    else {
	    	
	    	String FailLogin = "FailLogin";
	    	request.setAttribute(FailLogin, FailLogin);
	    	response.sendRedirect("login.jsp");
	    
	    }
	    
	}

}
