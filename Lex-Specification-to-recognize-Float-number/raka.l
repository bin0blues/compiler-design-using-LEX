%{
#include <stdio.h>
%}

%%

[0-9]+\.[0-9]+   { printf("\nFloat Number\n"); }

%%

int yywrap() { return 1; }

int main()
{
    yylex();
    return 0;
}
