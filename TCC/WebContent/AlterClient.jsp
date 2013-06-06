<%@page import="models.Cliente"%>
<%@page import="models.Endereco"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<%@ include file="AdminHeader.jsp" %> 	
<body>
		
	<%@ include file="AdminLeftBar.jsp" %>
	
	<%@ include file="AdminTopBar.jsp" %>
	
	<section id="main">
				
		<!-- Menu de mapeamento da página -->
			
			<div class="row-fluid">
			  <div class="span12">
			
			    <hr class="main">
			    <ul class="breadcrumbs">
			      <li>
			        <a class="crumb" href="index.jsp">Clientes</a>
			        <span class="divider">/</span>
			      </li>
			      <li>
			        <a class="crumb" href="NewClient.jsp">Alterar Cliente</a>
			        <span class="divider">/</span>
			      </li>
			    </ul>
			    <hr class="main">
			  </div>
			</div>
	
			<!-- Fim menu de mapeamento da página -->
	
			<!-- Formulário cadastro novo cliente -->

			<div class="container-fluid">
			    <div class="row-fluid">
			  		<div class="span12">
						<div class="box bordered">
			        		<div class="box inner light-gray">
			        		
			        		<% 
	
							Cliente cliente = (Cliente)request.getAttribute("rs");
	
							%>
			        		
								<form method="POST" action="AlterClient">
					
						<div class="row-fluid">
					          <div class="span6">
					            <div class="padded">
					              
					              <div class="section-title">
					                Alterando Clientes! *-*
					              </div>
					              
					            <div class="vpadded">
												
										<input type="hidden" name="CliCodigo" value="<%=cliente.getCliCodigo()%>">
												  
									  <div class="input full-width">
									    <input type="text" name="Usuario" value="<%=cliente.getCliUsuario()%>" rel="popover" data-placement="right" data-content="*Informe o nome de usuário" data-original-title="Usuário">
									  </div>
									  
									  <div class="input full-width">
									    <input type="text" name="NomeCompleto" value="<%=cliente.getCliNome()%>" rel="popover" data-placement="right" data-content="*Informe o nome completo do cliente" data-original-title="Nome Completo">
									  </div>
									
										<div class="vpadded">
										<label>Sexo:</label>
																	
										  <label class="radio inline">
										    <input type="radio" name="Sexo" id="Sexo" value="M" checked>
										    Masculino
										  </label>
										  <label class="radio inline">
										    <input type="radio" name="Sexo" id="Sexo" value="F">
										    Feminino
										  </label>
										</div>
										<br/>
									
									  <div class="input full-width">
									    <input type="text" name="Telefone" value="<%=cliente.getCliTelefone()%>" rel="popover" data-placement="right" data-content="*Informe o telefone do cliente" data-original-title="Telefone">
									  </div>
									  
									  <div class="input full-width">
									    <input type="text" name="Celular" value="<%=cliente.getCliCelular()%>" rel="popover" data-placement="right" data-content="Informe o celular do cliente" data-original-title="Celular">
									  </div>
									  
									  <div class="input full-width">
									    <input type="text" name="Endereco" value="<%=cliente.getCliEndereco()%>" rel="popover" data-placement="right" data-content="*Informe o endereço do cliente" data-original-title="Endereço">
									  </div>
									  
									  <div class="input full-width">
									    <input type="text" name="Numero" value="<%=cliente.getCliNumeroEndereco()%>" rel="popover" data-placement="right" data-content="*Informe o numero da residencia do cliente" data-original-title="Numero">
									  </div>
									  
									  <div class="input full-width">
									    <input type="text" name="Bairro" value="<%=cliente.getCliBairro()%>" rel="popover" data-placement="right" data-content="*Informe o bairro do cliente" data-original-title="Bairro">
									  </div>
									 
									  <div class="input full-width">
									    <input type="text" name="Cep" value="<%=cliente.getCliCep()%>" rel="popover" data-placement="right" data-content="*Informe o CEP do cliente" data-original-title="CEP">
									  </div>
									  
									    <div class="input full-width">
									    
									    <select name="Estado" style="width:100%" onchange="getCidades(this, 'cidade');" id="estado" data-method="GET" data-href="GetEstados" rel="popover" data-placement="right" data-content="*Selecione o estado do cliente" data-original-title="Estado">
										  <option value="0">Selecione o Estado</option>
										  <%
										  ArrayList<Endereco> listaEstados =  (ArrayList<Endereco>) request.getAttribute("estados");
						
												for (Endereco end : listaEstados) {
											%><option value="<%=end.getEstado()%>" <%=(end.getEstado() == cliente.getIdEstado()? "selected=\"selected\"": "")%>><%=end.getNomeEstado()%></option>
											<%} %>
										</select>
									  </div>
									  <script type="text/javascript">
									  	$(document).ready(function(){
									  		var element =  $('#estado');
									  		//getContent(element);
									  	})
									  </script>
									  
									  <div class="input full-width">
									    
									    <select name="Cidade" id="cidade" style="width:100%" data-method="GET" data-href="GetCidades?cod_estado=" rel="popover" data-placement="right" data-content="*Selecione a cidade do cliente" data-original-title="Cidade">
										  <option value="0">Selecione a Cidade</option>
										  
										  <%
										  
										  ArrayList<Endereco> listaCidades =  (ArrayList<Endereco>) request.getAttribute("cidades");
						
												for (Endereco end : listaCidades) {
											%><option value="<%=end.getCidade()%>"<%=(end.getCidade()== cliente.getIdCidade()? "selected=\"selected\"" : "")%>><%=end.getNomeCidade()%></option>
											<%} %>
										</select>
									  </div>
									 
									  
									  <div class="input full-width">
									    <input type="text" name="Email" value="<%=cliente.getCliEmail()%>" rel="popover" data-placement="right" data-content="*Informe o email do cliente" data-original-title="Email">
									  </div>
									  
									  <div class="input full-width">
									    <input type="text" name="DataNascimento" value="<%=cliente.getCliNascimento()%>" rel="popover" data-placement="right" data-content="*Informe a data de nascimento do cliente" data-original-title="Data Nascimento">
									  </div>
									  
									  <div class="input full-width">
									    <input type="text" name="Rg" value="<%=cliente.getCliRg()%>" rel="popover" data-placement="right" data-content="*Informe o RG do cliente" data-original-title="RG">
									  </div>
									  
									  <div class="input full-width">
									    <input type="text" name="Cpf" value="<%=cliente.getCliCpf()%>" rel="popover" data-placement="right" data-content="*Informe o CPF do cliente" data-original-title="CPF">
									  </div>
									  
									  <div class="input full-width">
									    <input type="text" name="Cnjp" value="<%=cliente.getCliCnpj()%>" rel="popover" data-placement="right" data-content="Informe o CNPJ do cliente" data-original-title="CNPJ">
									  </div>
									
										<input type="submit" class="btn light-blue inverse" name="Alterar" value="Alterar">
								  
								</div>
								
								</div>
							</div>
					</div>
																				
								</form>		          
			     			</div>
			      		</div>
			    	</div>
				</div>
			</div>


			<!-- Fim formulário cadastro novo cliente -->
	
	</section>
	<script type="text/javascript">
									  		
	  		$('input').popover({
	  			trigger: 'focus'
	  		});	
	  		$('select').popover({
	  			trigger: 'focus'
	  		});	
	  	
	  </script>
	<%@ include file="AdminFooter.jsp" %>

<!-- Modal dialog used for the image gallery 
<div id="modal-gallery" class="modal modal-gallery hide fade" tabindex="-1">
  <div class="modal-header">
    <a class="close" data-dismiss="modal">&times;</a>
    <h3 class="modal-title"></h3>
  </div>
  <div class="modal-body"><div class="modal-image"></div></div>
  <div class="modal-footer">
    <a class="btn modal-download light-blue inverse" target="_blank"><i class="icon-download"></i> Download</a>
    <a class="btn modal-play modal-slideshow" data-slideshow="5000"><i class="icon-play icon-white"></i> Slideshow</a>
    <a class="btn modal-prev medium-blue"><i class="icon-arrow-left icon-white"></i> Previous</a>
    <a class="btn modal-next medium-blue">Next <i class="icon-arrow-right icon-white"></i></a>
  </div>
</div>
-->
</body>
</html>