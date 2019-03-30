<%-- 
    Document   : alterar-cliente
    Created on : 29/03/2019, 14:27:10
    Author     : Casa
--%>

<%@page import="br.com.fatecpg.project03.Cliente"%>
<%@page import="br.com.fatecpg.project03.BD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Dados do Cliente</title>
    </head>
    
    <body>
        
        <nav class="navbar navbar-expand-lg navbar-light bg-dark">
        <a class="navbar-brand" href="home.jsp" style="color: white">Projeto 3</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conteudoNavbarSuportado"
            aria-controls="conteudoNavbarSuportado" aria-expanded="false" aria-label="Alterna navegação">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="conteudoNavbarSuportado">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="home.jsp" style="color: white">Home <span class="sr-only">(página
                            atual)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="clientes.jsp" style="color: white">Clientes</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link disabled" href="fornecedores.jsp" style="color: white">Fornecedores</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color: white;">
                        Cadastre-se
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="cadastro-cliente.jsp" style="color: black;">Clientes</a>
                        <a class="dropdown-item" href="cadastro-fornecedores.jsp" style="color: black;">Fornecedores</a>
                        <div class="dropdown-divider"></div>
                    </div>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Pesquisar" aria-label="Pesquisar">
                <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Pesquisar</button>
            </form>
        </div>
    </nav>
        
        <h4 style="text-align: center; margin-top:100px ">Deseja alterar os dados?</h4>
        
        <div style="text-align: center; display: inline-block; position: absolute; top:200px; left: 730px">
        <% int id = Integer.parseInt(request.getParameter("id"));%>
        <%Cliente c = BD.getClienteList().get(id); %>
        <br>
        <h4>ID:<b><%=id%></b></h4>
        
        <form action="clientes.jsp">
            Nome:
            <br/><input type="text" name="nome" value="<%= c.getNome() %>"/>
            <br/>Telefone:
            <br/><input type="text" name="telefone" value="<%= c.getTel() %>"/>
            <br/>Email:
            <br/><input type="text" name="email" value="<%= c.getEmail() %>"/>
            <hr/><h4 style="color: red">Tem certeza que deseja alterar esse registro?</h4>
            <input type="submit" name="excluir" value="Sim" class="btn btn-primary"/>
            <input type="submit" name="excluir" value="Não" class="btn btn-primary"/>
            <input type="hidden" name="id" value="<%=id%>"/>
        </form>
        
        </div>
        
        <footer style="position: absolute; top: 700px; left: -280px;">
        <hr style="width: 1920px;">
        <p style="text-align: center;"> <a href="https://github.com/ManoelRodriguez">Manoel Victor</a> || <a
                href="https://github.com/matheussmorais">Matheus Morais</a></p>
        <!-- JavaScript (Opcional) -->
        <!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous">
        </script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous">
        </script>
    </footer>
    </body>
</html>
