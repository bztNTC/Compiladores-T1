lexer grammar AlgumaLexer;

ALGORITMO: 'algoritmo'; 

DECLARE: 'declare';

LITERAL: 'literal';

INTEIRO: 'inteiro';

LEIA: 'leia';

ESCREVA: 'escreva';

FIM_ALGORITMO: 'fim_algoritmo';

REAL: 'real';

LOGICO: 'logico';

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

NUM_INT: ('+'|'-')? ('0'..'9')+;

NUM_REAL: ('+'|'-')? ('0'..'9')+ '.' ('0'..'9')+;

IDENT: [a-zA-Z0-9]+;

DELIM: ':';

ABREPAR: '(';

FECHAPAR: ')';

VIRG: ',';

DIVISAO: '/';

SOMA: '+';

MULTIPLICACAO: '*';

SUBTRACAO: '-';

ATRIBUICAO: '<-';

MENOR: '<';

IGUAL: '=';

MENOR_IGUAL: '<=';

MAIOR_IGUAL: '>=';

ATE: '..';

CADEIA: '"' ~('"')* '"';

COMENTARIO: '{' ~[\r\n]* '}' -> skip;

WS: ( ' ' | '\t' | '\r' | '\n' ) -> skip;

