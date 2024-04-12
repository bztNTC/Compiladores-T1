package br.ufscar.dc.compiladores.compiladort1;

import java.io.FileNotFoundException;
import java.io.PrintWriter;

public class Principal {
    public static void main(String args[]) {
        // Pega o primeiro argumento da linha de comando
        String arquivoSaida = args[0];

        // Cria um objeto para escrever no arquivo
        try(PrintWriter pw = new PrintWriter(arquivoSaida)) {
            pw.print("Imprimindo no arquivo, sem quebra de linha no final");
            pw.println("...Agora imprimindo com quebra de linha");
            pw.println("no final");
        } catch(FileNotFoundException fnfe) {
            System.err.println("O arquivo/diretório não existe:"+args[1]);
        }
    }
}