lexer grammar AlgumaLexer;

PALAVRAS_CHAVES: 
    'algoritmo' | 'declare' | 'literal' | 'inteiro' | 'leia' | 'escreva' | 'tipo' | 'funcao' | 'fim_funcao' | 'retorne' | 'fim_algoritmo' 
    | 'real' | 'logico' | 'var' | 'constante' | 'falso' | 'verdadeiro' | 'caso' | 'seja' | 'fim_caso' | 'se' | 'entao' | 'senao' | 'fim_se' 
    | 'para' | 'ate' | 'faca' | 'fim_para' | 'enquanto' | 'fim_enquanto' | 'registro' | 'fim_registro' | 'procedimento' | 'fim_procedimento';

OPERADORES_LOGICOS: 'e' | 'ou' | 'nao';

OPERADORES_ARITMETICOS: '/' | '+' | '*' | '%' | '-';

OPERADORES_RELACIONAIS: '<' | '=' | '<>' | '<=' | '>=' | '>';

NUM_INT: ('+')? ('0'..'9')+;

NUM_REAL: ('+'|'-')? ('0'..'9')+ '.' ('0'..'9')+;

IDENT: [a-zA-Z][a-zA-Z0-9_]*;

DELIM: ':';

ABRE_PAR: '(';

FECHA_PAR: ')';

ABRE_COL: '[';

FECHA_COL: ']';

VIRG: ',';

ATRIBUICAO: '<-';

PONTEIRO: '^';

ENDERECO: '&';

DOT: '.';

ATE: '..';

WS: ( ' ' | '\t' | '\r' | '\n' ) -> skip;

CADEIA: '"' (~('\n' | '\r' | '"'))* '"';

CADEIA_SEM_FIM : '"' (~('\n' | '\r' | '"'))* ('\n' | '\r');

COMENTARIO: '{' (~('\n'|'\r'|'}'))* '}' -> skip;

COMENTARIO_SEM_FIM : '{' (~('\n'|'\r'|'}'))* ('\n'|'\r');

CARACTER_INVALIDO : .;

