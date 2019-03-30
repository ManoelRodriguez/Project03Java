<%-- 
    Document   : excluir-cliente
    Created on : 29/03/2019, 14:27:01
    Author     : Casa
--%>

<%@page import="br.com.fatecpg.project03.BD"%>
<%@page import="br.com.fatecpg.project03.Cliente"%>
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
        <title>Excluir Dados do Cliente</title>
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
                            <a class="dropdown-item" href="cadastro-clientes.jsp" style="color: black;">Clientes</a>
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


        <% int id = Integer.parseInt(request.getParameter("id"));%>
        <%Cliente c = BD.getClienteList().get(id);%>


        <div style="width: 500px; position: absolute; left: 450px; top: 100px">
            <table class="table">

                <tr>
                    <th scope="col">ID</th>
                    <th><%=id%></th>
                </tr>
                <tr>
                    <th scope="col">Nome</th>
                    <th><%=c.getNome()%></th>                   
                </tr>
                <tr>
                    <th scope="col">CPF</th>
                    <th><%=c.getCpf()%></th>
                </tr>
                <tr>
                    <th scope="col">Registro Geral</th>
                    <th><%=c.getRegistrogeral()%></th>
                </tr>
                <tr>
                    <th scope="col">E-mail</th>
                    <th><%=c.getEmail()%></th>
                </tr>
                <tr>
                    <th scope="col">Telefone</th>
                    <th><%=c.getTel()%></th>
                </tr>
                <tr>
                    <th scope="col">Endereço</th>
                    <th><%=c.getEndereco()%></th>
                </tr>

            </table>
        </div>
        <h4 style="color: red; text-align: center;position: absolute; top: 500px; left: 450px;">Deseja realmente excluir os dados cadastrados?</h4><br/>
        <div style="position: absolute; left: 650px; position:absolute; top: 550px">
            <form action="clientes.jsp">
                <input type="submit" name="excluir" value="Sim" class="btn btn-primary"/>
                <input type="submit" name="excluir" value="Não" class="btn btn-primary" />
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
