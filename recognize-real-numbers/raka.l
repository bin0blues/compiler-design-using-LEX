%{
#include <stdio.h>
%}
%%
[0-9]+\.[0-9]*([Ee][+-]?[0-9]+)?  { printf("Real number: %s\n", yytext); }
\.[0-9]+([Ee][+-]?[0-9]+)?        { printf("Real number: %s\n", yytext); }
.|\n                              { ECHO; }
%%
int main() {
    yylex();
    return 0;
}
int yywrap() {
    return 1;
}