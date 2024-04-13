package br.ufscar.dc.compiladores.compt1;

import java.io.IOException;
import java.io.PrintWriter;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.Token;

public class Principal {

    public static void main(String[] args) {
        if (args.length < 2) {
            System.err.println("Usage: java -jar seu-analisador.jar arquivo-entrada arquivo-saida");
            System.exit(1);
        }

        String arquivoEntrada = args[0];
        String arquivoSaida = args[1];

        try {
            // args[0] é o primeiro argumento da linha de comando
            CharStream cs = CharStreams.fromFileName(args[0]);
            AlgumaLexer lex = new AlgumaLexer(cs);

            try (PrintWriter pw = new PrintWriter(arquivoSaida)) {
                Token t = null;
                while ((t = lex.nextToken()).getType() != Token.EOF) {
                    pw.println("<'" + t.getText() + "'," + AlgumaLexer.VOCABULARY.getDisplayName(t.getType()) + ">");
                }
            }
        } catch (IOException ex) {
            System.err.println("Erro ao ler o arquivo de entrada: " + ex.getMessage());
        }
    }
}
