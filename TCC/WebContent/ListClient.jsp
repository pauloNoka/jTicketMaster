<%@page import="models.Cliente"%>
<%@page import="java.util.List"%>
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
			        <a class="crumb" href="NewClient.jsp">Listar Cliente</a>
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
								 <div class="section-title">
					                Listando Clientes! *-*
					              </div>		          
					             	
					             	<table class="table table-striped data-table">
<thead>
<tr>
  <th>#</th>
  <th>Usuário</th>
  <th>Nome Cliente</th>
  <th>Email</th>
  <th>Telefone</th>
  <th>Ação</th>
</tr>
</thead>
<tbody>

					<%
						List<Cliente> cliente = (List<Cliente>) request.getAttribute("rs");

						for (Cliente c : cliente) {
					%>

<tr class="gradeX">
  <td><%=c.getCliCodigo()%></td>
  <td><%=c.getCliUsuario()%></td>
  <td><%=c.getCliNome()%></td>
  <td><%=c.getCliEmail()%></td>
  <td><%=c.getCliTelefone()%></td>
  <td>
  <a href="ListOneClient?id=<%=c.getCliCodigo()%>" title="Clique para alterar os dados do cliente"><i class="icon-pencil"></i></a>
  <a href="DeleteClient?id=<%=c.getCliCodigo()%>" title="Clique para deletar o cliente"><i class="icon-remove-circle"></i></a>
  </td>
</tr>

				<%
					}
				%>

</tbody>
</table>
					             	          
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