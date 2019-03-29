<%-- 
    Document   : fornecedores
    Created on : 29/03/2019, 10:50:13
    Author     : Manoel Rodriguez
--%>

<%@page import="br.com.fatecpg.project03.BD"%>
<%@page import="br.com.fatecpg.project03.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (request.getParameter("enviar") != null) {
        String nome = request.getParameter("nome");
        String razao = request.getParameter("razao");
        String cnpj = request.getParameter("cnpj");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        String endereco = request.getParameter("endereco");
        Fornecedor novoFornecedor = new Fornecedor();
        novoFornecedor.setNome(nome);
        novoFornecedor.setRazao(razao);
        novoFornecedor.setCnpj(cnpj);
        novoFornecedor.setEmail(email);
        novoFornecedor.setTelefone(telefone);
        novoFornecedor.setEndereco(endereco);
        BD.getFornecedoresList().add(novoFornecedor);
        response.sendRedirect(request.getRequestURI());
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fornecedores Cadastrados</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
              integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
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
        <h4 style="text-align: center; margin-top: 70px">Fornecedores Cadastrados</h4>
        <div style="width: 1000px; position: absolute; left: 240px; top: 200px">
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Nome</th>
                        <th scope="col">Razão Social</th>
                        <th scope="col">CNPJ</th>
                        <th scope="col">E-mail</th>
                        <th scope="col">Telefone</th>
                        <th scope="col">Endereço</th>
                        <th scope="col">Comandos</th>
                    </tr>
                </thead>
                <%for (Fornecedor c : BD.getFornecedoresList()) {%>
                <tr>
                    <%int id = BD.getFornecedoresList().indexOf(c);%>

                    <td><%= id%></td>
                    <td><%= c.getNome()%></td>
                    <td><%= c.getRazao()%></td>
                    <td><%= c.getCnpj()%></td>
                    <td><%= c.getEmail()%></td>
                    <td><%= c.getTelefone()%></td>
                    <td><%= c.getEndereco()%></td>
                    <td>
                        <a href="alterar.jsp?id=<%=id%>" style="text-align: center; text-decoration: none">Alterar</a><br/>
                        <a href="excluir.jsp?id=<%=id%>" style="text-align: center; text-decoration: none">Excluir</a>
                    </td>
                </tr>
                <%}%>
            </table>
        </div>

        <footer style="position: absolute; top: 700px; left: 50px;">
            <hr style="width: 1300px;">
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
    </body>
</html>
