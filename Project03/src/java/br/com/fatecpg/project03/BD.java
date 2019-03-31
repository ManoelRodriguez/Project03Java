package br.com.fatecpg.project03;

import java.util.ArrayList;

public class BD {

    private static ArrayList<Fornecedor> fornecedoresList;

    public static ArrayList<Fornecedor> getFornecedoresList() {
        if (fornecedoresList == null) {
            fornecedoresList = new ArrayList<>();
            Fornecedor f1 = new Fornecedor();
            f1.setNome("Manoel Victor");
            f1.setRazao("Cargas Express");
            f1.setCnpj("12.345.678/9123-45");
            f1.setEmail("manoel@gmail.com");
            f1.setTelefone("+55 13 99123-4567");
            f1.setEndereco("Santos");
            fornecedoresList.add(f1);
            
            Fornecedor f2 = new Fornecedor();
            f2.setNome("Daniel Ramos");
            f2.setRazao("World Devs");
            f2.setCnpj("17.953.678/973-45");
            f2.setEmail("daniel@gmail.com");
            f2.setTelefone("+55 13 97983-4567");
            f2.setEndereco("Praia Grande");
            fornecedoresList.add(f2);
            
            Fornecedor f3 = new Fornecedor();
            f3.setNome("Emerson Silva");
            f3.setRazao("Planets Students");
            f3.setCnpj("45.983.68/973-75");
            f3.setEmail("emerson@gmail.com");
            f3.setTelefone("+55 13 97983-8321");
            f3.setEndereco("São Paulo");
            fornecedoresList.add(f3);
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
            
            Cliente novoc2 = new Cliente();
            novoc2.setNome("Michael Pires");
            novoc2.setCpf("777.888.999-75");
            novoc2.setRegistrogeral("99.555.111-7");
            novoc2.setEmail("michael@yahoo.com");
            novoc2.setTel("+55 13 97896-1278");
            novoc2.setEndereco("Guarujá");
            clientesList.add(novoc2);
            
            Cliente novoc3 = new Cliente();
            novoc3.setNome("Leandro Costa");
            novoc3.setCpf("789.742.349-95");
            novoc3.setRegistrogeral("18.294.783-3");
            novoc3.setEmail("leandro@yahoo.com");
            novoc3.setTel("+55 13 97896-1223");
            novoc3.setEndereco("Bertioga");
            clientesList.add(novoc3);

        }
        return clientesList;
    }
    
}
