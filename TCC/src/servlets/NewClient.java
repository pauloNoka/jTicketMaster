package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

import util.GeneratorPass;
import util.SendEmail;

import models.Cliente;
import dao.ClienteDAO;

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

	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		// Instancia a classe cliente
		Cliente cliente = new Cliente();

		// Define campos nao obrigatoros como vazio;
		String Celular = "";
		String Cnpj = "";

		// Recebe os dados do formulario NewCliente.jsp
		String Usuario = request.getParameter("Usuario");
		String NomeCompleto = request.getParameter("NomeCompleto");
		String Sexo = request.getParameter("Sexo");
		String Telefone = request.getParameter("Telefone");
		Celular = request.getParameter("Celular");
		String Endereco = request.getParameter("Endereco");
		int Numero = Integer.parseInt(request.getParameter("Numero"));
		String Bairro = request.getParameter("Bairro");
		String Cep = request.getParameter("Cep");
		int Cidade = Integer.parseInt(request.getParameter("Cidade"));
		String Email = request.getParameter("Email");
		String DataNascimento = request.getParameter("DataNascimento");
		String Rg = request.getParameter("Rg");
		String Cpf = request.getParameter("Cpf");
		Cnpj = request.getParameter("Cnpj");

		//Instancia a classe GenaratorPass
		GeneratorPass gp = new GeneratorPass();
		
		//Gera uma senha aleat�ria de 6 digitos
		String Password = gp.GeneratorPass();
		
		// Seta os valores recebidos do formulario no metodo Cliente
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
		cliente.setCliSenha(Password);

		// Instancia a classe ClienteDAO
		ClienteDAO clienteDao = new ClienteDAO();

		// Instancia a classe SendEmail
		SendEmail sm = new SendEmail("mail.nosamamoscomprar.com.br", 587);
		
		// Passa os parametros Email e Nome Completo pra classe SendEmail
		sm.setAddress(Email, NomeCompleto);
			
			String From = "suporte@nosamamoscomprar.com.br";
			
			String Subject = "Senha de acesso JTicketMaster";
			
			String Msg = "Ol� "+NomeCompleto+" sua senha de acesso ao sistema JTicketMaster �: "+Password+
						 " Ao efetuar o primeiro acesso no sistema voc� pode alterar sua senha" +
						 "no menu Perfil -> Alterar Minha Senha!";
			
			String Authentication = "suporte@nosamamoscomprar.com.br";
			
			boolean SSL = false;
			
			String Pass = "sqsa3258";
			
			sm.Sendmail(From, Subject, Msg, Authentication, SSL, Pass);
			
			// Passa o objeto cliente para a classe DAO inserir os dados no BD
			clienteDao.insert(cliente);
			
		// Redireciona para ListClient.jsp
		String success = "cliente inserido com sucesso!";
		request.setAttribute("success", success);
		request.getRequestDispatcher("ListClient").forward(request, response);
		
	}

}
