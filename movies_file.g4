grammar movies_file;

r : value;

value
    : object
    | array
    | NUMBER
    | STRING;
object : '{' pair (',' pair)* '}';
pair : STRING ':' value;
array : '[' value (',' value)* ']';

NUMBER : [-]?[0-9]*[.]?[0-9]+;
STRING : ["]~["\r\n]*?["];

WS : [ \t\r\n]+ -> skip;