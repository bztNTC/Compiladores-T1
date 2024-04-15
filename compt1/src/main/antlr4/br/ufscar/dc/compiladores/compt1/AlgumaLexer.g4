lexer grammar AlgumaLexer;

ALGORITMO: 'algoritmo'; 

DECLARE: 'declare';

LITERAL: 'literal';

INTEIRO: 'inteiro';

LEIA: 'leia';

ESCREVA: 'escreva';

TYPE: 'tipo';

FUNCTION: 'funcao';

END_FUNCTION: 'fim_funcao';

RETURN: 'retorne';

FIM_ALGORITMO: 'fim_algoritmo';

REAL: 'real';

LOGICO: 'logico';

VAR: 'var';

CONST: 'constante';

FALSE: 'falso';

TRUE: 'verdadeiro';

SWITCH: 'caso'; 

SEJA: 'seja';

END_SWITCH: 'fim_caso';

AND: 'e';

OR: 'ou';

NOT: 'nao';

IF: 'se';

IF_TRUE: 'entao';

ELSE: 'senao';

END_IF: 'fim_se';

FOR: 'para';

UNTIL: 'ate';

DO: 'faca';

END_FOR: 'fim_para';

WHILE: 'enquanto';

END_WHILE: 'fim_enquanto';

RECORD: 'registro';

END_RECORD: 'fim_registro';

PROCEDURE: 'procedimento';

END_PROCEDURE: 'fim_procedimento';

NUM_INT: ('+')? ('0'..'9')+;

NUM_REAL: ('+'|'-')? ('0'..'9')+ '.' ('0'..'9')+;

IDENT: [a-zA-Z][a-zA-Z0-9_]*;

DELIM: ':';

ABRE_PAR: '(';

FECHA_PAR: ')';

ABRE_COL: '[';

FECHA_COL: ']';

VIRG: ',';

DIVISAO: '/';

SOMA: '+';

MULTIPLICACAO: '*';

MOD: '%';

SUBTRACAO: '-';

ATRIBUICAO: '<-';

MENOR: '<';

IGUAL: '=';

DIFERENTE: '<>';

MENOR_IGUAL: '<=';

MAIOR_IGUAL: '>=';

MAIOR: '>';

VETOR_DEC: '^';

VETOR_ATRI: '&';

DOT: '.';

ATE: '..';

CADEIA: '"' ~('"')* '"';

COMENTARIO: '{' ~[\r\n]* '}' -> skip;

WS: ( ' ' | '\t' | '\r' | '\n' ) -> skip;

