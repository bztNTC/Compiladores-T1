package br.ufscar.dc.compiladores.compt1;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.FileNotFoundException;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.Token;

public class Principal {

    public static void main(String[] args) {
        try {
            // Verifica se foram passados os argumentos corretamente
            String arquivoSaida = args[1];
            CharStream cs = CharStreams.fromFileName(args[0]);
            try (PrintWriter pw = new PrintWriter(arquivoSaida)) {
                AlgumaLexer lex = new AlgumaLexer(cs); 
                Token t = null; 
                
                // Loop para ler e processar os tokens
                while ((t = lex.nextToken()).getType() != Token.EOF) {
                    String nomeToken = AlgumaLexer.VOCABULARY.getDisplayName(t.getType());

                    // Verifica o tipo do token e imprime conforme necessário
                    switch (nomeToken) {
                        case "CARACTER_INVALIDO":
                            pw.println("Linha " + t.getLine() + ": " + t.getText() + " - simbolo nao identificado");
                            break;
                        case "CADEIA_SEM_FIM":
                            pw.println("Linha " + t.getLine() + ": cadeia literal nao fechada");
                            break;
                        case "COMENTARIO_SEM_FIM":
                            pw.println("Linha " + t.getLine() + ": comentario nao fechado");
                            break;
                        case "PALAVRAS_CHAVES":
                        case "OPERADORES_LOGICOS":
                        case "OPERADORES_ARITMETICOS":
                        case "OPERADORES_RELACIONAIS":
                            pw.println("<'" + t.getText() + "','" + t.getText() + "'>");
                            break;
                        default:
                            pw.println("<'" + t.getText() + "'," + nomeToken + ">");
                            break;
                    }

                    // Se encontrar um token de erro, interrompe o loop
                    if (nomeToken.equals("CARACTER_INVALIDO") || nomeToken.equals("CADEIA_SEM_FIM") || nomeToken.equals("COMENTARIO_SEM_FIM")) {
                        break;
                    }
                }
            }catch(FileNotFoundException ex) { 
                // Tratamento de exceção para arquivo não encontrado
                System.err.println("O arquivo/diretório não existe:"+args[1]);
            }
        } catch (IOException errado) { 
            // Tratamento de exceção para erro de I/O
            errado.printStackTrace();
        }
    }
}
