<nav id="primary" class="main-nav collapsible-nav">
  <!-- Brand -->
  <a id="sidebar-brand" href="../pages/dashboard.html">
    Whitemin
  </a>
  <button type="button" class="btn btn-navbar btn-inverse" data-toggle="collapse" data-target=".nav-collapse">
    <i class="icon-reorder"></i>
  </button>

  <ul class="nav-collapse collapse">

<!-- Menu da esquerda -->

  <!-- Perfil -->
    <li class="profile">
      <a href="#profile-opts" class="accordion-toggle" data-toggle="collapse">
         <img class="avatar user3">
          <span class="text" id="profile-text">
            Jane Doe <b class="caret"></b>
          </span>
      </a>

      <ul id="profile-opts" class="collapse secondary">
        <li class="">
          <a href="#">
            Settings
          </a>
        </li>
        <li class="">
          <a href="#">
            Change password
          </a>
        </li>
        <li class="">
          <a href="#">
            Logout
          </a>
        </li>
      </ul>
    </li>

    <!-- Inicio -->
    <li class="active">
      <a href="index.jsp">
          <span class="icon">
            <i class="icon-dashboard"></i>
          </span>
          <span class="text">
            Inicio
          </span>
      </a>
    </li>

    
    <li class="">
      
      	<!-- Menu Clientes -->
      
      <a href="#clientes" class="accordion-toggle" data-toggle="collapse">
          <span class="icon">
            <i class="icon-microformats"></i>
          </span>
          <span class="text">
            Clientes <b class="caret"></b>
          </span>
      </a>

      <ul id="clientes" class="collapse secondary">
        <li class="">
          <a href="NewClient.jsp">
              Cadastrar
          </a>
        </li>
        <li class="">
          <a href="ListClient.jsp">
              Listar
          </a>
        </li>
      </ul>
    </li>
      	<!-- Fim menu Clientes -->
      
      	<!-- Menu Funcionarios -->
      <li class="">
          <a href="#funcionarios" class="accordion-toggle" data-toggle="collapse">
          <span class="icon">
            <i class="icon-microformats"></i>
          </span>
          <span class="text">
            Funcionários <b class="caret"></b>
          </span>
      </a>

      <ul id="funcionarios" class="collapse secondary">
        <li class="">
          <a href="NewFunc.jsp">
              Cadastrar
          </a>
        </li>
        <li class="">
          <a href="ListFunc.jsp">
              Listar
          </a>
        </li>
      </ul>
      </li>
      <!-- Fim menu Funcionarios -->
      
     	<!-- Menu Configurações -->
      <li class="">
          <a href="#configuracoes" class="accordion-toggle" data-toggle="collapse">
          <span class="icon">
            <i class="icon-microformats"></i>
          </span>
          <span class="text">
            Configurações<b class="caret"></b>
          </span>
      </a>

      <ul id="configuracoes" class="collapse secondary">
        <li class="">
          <a href="NewFunc.jsp">
              Cadastrar Admin
          </a>
        </li>
        <li class="">
          <a href="ListFunc.jsp">
              Listar Admin
          </a>
        </li>
      </ul>
      </li>
      <!-- Fim menu Configurações -->
	
	<!-- Fim menu da esquerda -->
  </ul>
  </nav>