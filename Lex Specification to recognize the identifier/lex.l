%{
#include <stdio.h>
%}

%%
[a-zA-Z_]([a-zA-Z0-9_])*   { printf("Identifier\n"); }
.+                          { printf("Not an Identifier\n"); }
.|\n                        ;
%%

int yywrap() {
    return 1;
}

int main(void) {
    yylex();
    return 0;
}
