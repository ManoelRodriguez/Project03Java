package br.com.fatecpg.project03;

import java.util.ArrayList;

public class BD {

    private static ArrayList<Fornecedor> fornecedoresList;

    public static ArrayList<Fornecedor> getFornecedoresList() {
        if (fornecedoresList == null) {
            fornecedoresList = new ArrayList<>();
            Fornecedor f1 = new Fornecedor();
            f1.setNome("Manoel Victor");
            f1.setRazao("Transporte de cargas");
            f1.setCnpj("12.345.678/9123-45");
            f1.setEmail("manoel@gmail.com");
            f1.setTelefone("+55 13 99123-4567");
            f1.setEndereco("Vila São Jorge - Santos");

        }
        return fornecedoresList;
    }
    
    private static ArrayList<Cliente> clientesList;

    public static ArrayList<Cliente> getClienteList() {
        if (clientesList == null) {
            clientesList = new ArrayList<>();
            Cliente novoc = new Cliente();
            novoc.setNome("Matheus Morais");
            novoc.setCpf("111.222.333-45");
            novoc.setRegistrogeral("11.222.333-4");
            novoc.setEmail("clientex@yahoo.com");
            novoc.setTel("+55 13 99123-1234");
            novoc.setEndereco("Praça 19 de Janeiro, 144 - Praia Grande");
            clientesList.add(novoc);

        }
        return clientesList;
    }
    
}
