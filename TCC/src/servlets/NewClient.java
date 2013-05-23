package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClienteDAO;

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
		
		//Instancia a classe cliente
		Cliente cliente = new Cliente();	
		
		//Define campos nao obrigatoros como vazio;
		String Celular = "";
		String Cnpj    = "";
		
		//Recebe os dados do formulario NewCliente.jsp
		String Usuario        = request.getParameter("Usuario");
		String NomeCompleto   = request.getParameter("NomeCompleto"); 
		String Sexo	 		  = request.getParameter("Sexo");
		String Telefone       = request.getParameter("Telefone");
		Celular       		  = request.getParameter("Celular");
		String Endereco       = request.getParameter("Endereco");
		int Numero			  = Integer.parseInt(request.getParameter("Numero"));
		String Bairro 		  = request.getParameter("Bairro");
		String Cep            = request.getParameter("Cep");
		int Cidade 			  = Integer.parseInt(request.getParameter("Cidade"));
		String Email          = request.getParameter("Email");
		String DataNascimento = request.getParameter("DataNascimento");
		String Rg   	      = request.getParameter("Rg");
		String Cpf			  = request.getParameter("Cpf");
		Cnpj			 	  = request.getParameter("Cnpj");
		
		//Seta os valores recebidos do formulario no metodo Cliente
		cliente.setCliUsuario(Usuario);
		cliente.setCliNome(NomeCompleto);
		cliente.setCliSexo(Sexo);
		cliente.setCliTelefone(Telefone);
		cliente.setCliCelular(Celular);
		cliente.setCliEndereco(Endereco);
		cliente.setCliNumeroEndereco(Numero);
		cliente.setCliBairro(Bairro);
		cliente.setCliCep(Cep);
		cliente.setIdCidade(Cidade);
		cliente.setCliEmail(Email);
		cliente.setCliNascimento(DataNascimento);
		cliente.setCliRg(Rg);
		cliente.setCliCpf(Cpf);
		cliente.setCliCnpj(Cnpj);		 
		
		//PrintWriter out = response.getWriter();
		
		//out.write("IdCidade:"+cliente.getCliCpf());
		
		/**/ //Instancia a classe ClienteDAO
		ClienteDAO clienteDao = new ClienteDAO();
		
		//Passa o objeto cliente para a classe DAO inserir os dados no BD
		clienteDao.insert(cliente);
		
		//Redireciona para ListClient.jsp
		String success = "cliente inserido com sucesso!";
		request.setAttribute("success", success);
		request.getRequestDispatcher("ListClient").forward(request, response);
		/**/
		
	}

}
