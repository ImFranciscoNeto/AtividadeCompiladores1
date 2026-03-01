grammar BooleanExpr;

prog
    : expr EOF
    ;

expr
    : expr OR andExpr
    | andExpr
    ;

andExpr
    : andExpr AND notExpr
    | notExpr
    ;

notExpr
    : NOT notExpr
    | relExpr
    ;

relExpr
    : arithExpr relOp arithExpr
    | LPAREN expr RPAREN
    ;

arithExpr
    : INT
    ;

relOp
    : GE
    | LE
    | EQ
    | NE
    | GT
    | LT
    ;

GE : '>=';
LE : '<=';
EQ : '==';
NE : '!=';

GT : '>';
LT : '<';

AND : 'and';
OR  : 'or';
NOT : 'not';

LPAREN : '(';
RPAREN : ')';

INT : [0-9]+;

WS : [ \t\r\n]+ -> skip;
