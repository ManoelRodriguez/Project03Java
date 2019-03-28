<%-- 
    Document   : home
    Created on : 28/03/2019, 13:12:19
    Author     : Manoel Rodriguez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title>Home</title>

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
    <div class="jumbotron" style="height: 350px; padding: 120px;">
        <div class="container">
            <h1>Informações</h1>
            <p>Este projeto consiste em uma aplicação Java Web para cadastro de Clientes e Fornecedores, utilizando ArrayList.
            </p>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-6" style="text-align: justify;">
                <h3>Cadastro para Clientes</h3>
                <ul>
                    <li>Nome</li>
                    <li>CPF</li>
                    <li>RG</li>
                    <li>Email</li>
                    <li>Telefone</li>
                    <li>Endereço</li>
                </ul>
            </div>
            <div class="col-md-6" style="text-align: justify;">
                <h3>Cadastro para Fornecedores</h3>
                <ul>
                    <li>Nome</li>
                    <li>Razão Social</li>
                    <li>CNPJ</li>
                    <li>Email</li>
                    <li>Telefone</li>
                    <li>Endereço</li>
                </ul>
            </div>

        </div>

    </div>
    <footer>
        <hr>
        <p style="text-align: center"> <a href="https://github.com/ManoelRodriguez">Manoel Victor</a> || <a
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
