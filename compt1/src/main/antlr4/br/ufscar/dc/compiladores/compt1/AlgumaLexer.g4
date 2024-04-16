lexer grammar AlgumaLexer;

// Definição de palavras-chave
PALAVRAS_CHAVES: 
    'algoritmo' | 'declare' | 'literal' | 'inteiro' | 'leia' | 'escreva' | 'tipo' | 'funcao' | 'fim_funcao' | 'retorne' | 'fim_algoritmo' 
    | 'real' | 'logico' | 'var' | 'constante' | 'falso' | 'verdadeiro' | 'caso' | 'seja' | 'fim_caso' | 'se' | 'entao' | 'senao' | 'fim_se' 
    | 'para' | 'ate' | 'faca' | 'fim_para' | 'enquanto' | 'fim_enquanto' | 'registro' | 'fim_registro' | 'procedimento' | 'fim_procedimento';

// Definição de operadores lógicos
OPERADORES_LOGICOS: 'e' | 'ou' | 'nao';

// Definição de operadores aritméticos
OPERADORES_ARITMETICOS: '/' | '+' | '*' | '%' | '-';

// Definição de operadores relacionais
OPERADORES_RELACIONAIS: '<' | '=' | '<>' | '<=' | '>=' | '>';

// Definição de números inteiros
NUM_INT: ('+')? ('0'..'9')+;

// Definição de números reais
NUM_REAL: ('+'|'-')? ('0'..'9')+ '.' ('0'..'9')+;

// Definição de identificadores
IDENT: [a-zA-Z][a-zA-Z0-9_]*;

// Definição de delimitador (:)
DELIM: ':';

// Definição de abre parênteses
ABRE_PAR: '(';

// Definição de fecha parênteses
FECHA_PAR: ')';

// Definição de abre colchetes
ABRE_COL: '[';

// Definição de fecha colchetes
FECHA_COL: ']';

// Definição de vírgula
VIRG: ',';

// Definição de operador de atribuição (<-)
ATRIBUICAO: '<-';

// Definição de ponteiro (^)
PONTEIRO: '^';

// Definição de endereço (&)
ENDERECO: '&';

// Definição de ponto (.)
DOT: '.';

// Definição de intervalo (..)
ATE: '..';

// Definição de espaço em branco (ignorado)
WS: ( ' ' | '\t' | '\r' | '\n' ) -> skip;

// Definição de cadeia entre aspas duplas
CADEIA: '"' (~('\n' | '\r' | '"'))* '"';

// Definição de cadeia sem fim
CADEIA_SEM_FIM : '"' (~('\n' | '\r' | '"'))* ('\n' | '\r');

// Definição de comentário entre chaves
COMENTARIO: '{' (~('\n'|'\r'|'}'))* '}' -> skip;

// Definição de comentário sem fim
COMENTARIO_SEM_FIM : '{' (~('\n'|'\r'|'}'))* ('\n'|'\r');

// Definição de caracter inválido (qualquer caractere)
CARACTER_INVALIDO : .;
