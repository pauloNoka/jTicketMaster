<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<%@ include file="AdminHeader.jsp" %> 	
<body>

	
<div class="top-bar">
  <a id="topbar-brand-out" class="brand" href="../dashboard.html">
    Administracao - Tickets
  </a>
</div>
  <div class="container-fluid">
  <div class="row-fluid">
    <div class="span12">
      <div class="login-container center">
      <br/><br/><br/><br/><br/><br/><br/>
  <div class="title text-transparent">Login</div>
  <hr class="main">

  <form class="login-form" action="Login" method="get">
    <ul class="fields-list">
      <li>
        <i class="icon-user" style="float: left;"></i>
        <input autocomplete="off" id="Usuario" name="Usuario" placeholder="Usuário" type="text">
      </li>
      <li>
        <i class="icon-key"></i>
        <input autocomplete="off" id="Senha" name="Senha" placeholder="Senha" type="password">
      </li>
    </ul>

    <div class="actions">
      <!--  <a href="../dashboard.html" class="btn btn-large medium-blue login-btn">
        Entrar
      </a>-->
      <input name="enviar" type="submit"  class="btn btn-large medium-blue login-btn" value="Logar">
    </div>

    <hr class="main">
  </form>
</div>
    </div>
  </div>
</div>
</body>
</html>