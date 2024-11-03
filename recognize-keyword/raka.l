%{
#include <stdio.h>
%}
%%
(int|float|char|if|else|for|while|return) { printf("KEYWORD\n"); }
. { printf("Not Keyword\n"); }
%%
int yywrap() { return 1; }
int main() {
    yylex();
    return 0;
}