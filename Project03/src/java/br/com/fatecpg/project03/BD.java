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

}
