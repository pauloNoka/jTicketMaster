<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
			        <a class="crumb" href="NewClient.jsp">Cadastrar Cliente</a>
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
								<form method="POST" action="NewClient">
					
						<div class="row-fluid">
					          <div class="span6">
					            <div class="padded">
					              
					              <div class="section-title">
					                Cadastrando Clientes! *-*
					              </div>
					              
					            <div class="vpadded">
												  
									  <div class="input full-width">
									    <input type="text" name="Usuario" placeholder="Nome de Usuário">
									  </div>
									  
									  <div class="input full-width">
									    <input type="text" name="NomeCompleto" placeholder="Nome Completo">
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
									    <input type="text" name="Telefone" placeholder="Telefone">
									  </div>
									  
									  <div class="input full-width">
									    <input type="text" name="Celular" placeholder="Celular">
									  </div>
									  
									  <div class="input full-width">
									    <input type="text" name="Endereco" placeholder="Endereco">
									  </div>
									  
									  <div class="input full-width">
									    <input type="text" name="Numero" placeholder="Numero">
									  </div>
									  
									  <div class="input full-width">
									    <input type="text" name="Bairro" placeholder="Bairro">
									  </div>
									 
									  <div class="input full-width">
									    <input type="text" name="Cep" placeholder="CEP">
									  </div>
									  
									  <div class="input full-width">
									    
									    <select name="Estado" style="width:100%" onchange="getCidades(this, 'cidade');" id="estado" data-method="GET" data-href="GetEstados" >
										  <option value="0">Selecione o Estado</option>
										</select>
									  </div>
									  <script type="text/javascript">
									  	$(document).ready(function(){
									  		var element =  $('#estado');
									  		getContent(element);
									  	})
									  </script>
									  
									  <div class="input full-width">
									    
									    <select name="Cidade" id="cidade" style="width:100%" data-method="GET" data-href="GetCidades?cod_estado=" disabled="disabled">
										  <option value="0">Selecione a Cidade</option>
										</select>
									  </div>
									 
									  
									  <div class="input full-width">
									    <input type="text" name="Email" placeholder="Email">
									  </div>
									  
									  <div class="input full-width">
									    <input type="text" name="DataNascimento" placeholder="Data de Nascimento">
									  </div>
									  
									  <div class="input full-width">
									    <input type="text" name="Rg" placeholder="Rg">
									  </div>
									  
									  <div class="input full-width">
									    <input type="text" name="Cpf" placeholder="CPF">
									  </div>
									  
									  <div class="input full-width">
									    <input type="text" name="Cnjp" placeholder="CNPJ">
									  </div>
									
										<input type="submit" class="btn light-blue inverse" name="Cadastrar" value="Cadastrar">
								  
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