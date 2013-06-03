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
			        <a class="crumb" href="index.jsp">Produtos</a>
			        <span class="divider">/</span>
			      </li>
			      <li>
			        <a class="crumb" href="NewProduct.jsp">Cadastrar Produto</a>
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
								<form action="NewProduct" method="post" name="NewProduct" id="NewProduct">
					
						<div class="row-fluid">
					          <div class="span6">
					            <div class="padded">
					              
					              <div class="section-title">
					                Cadastrando Funcionarios! *-*
					              </div>
					              
					            <div class="vpadded">
												  
									   

									  
									
									
									  
									  <div class="input full-width">
									    <textarea name="DescricaoTicket" placeholder="Descri��o do Ticket"></textarea>
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