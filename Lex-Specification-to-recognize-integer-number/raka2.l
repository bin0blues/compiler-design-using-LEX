
%{
	#include<stdio.h>
%}
%%
[0-9]+ {printf("\n Integer Number\n");}
%%
int yywrap() { return 1; }
int main()
{
    yylex();
    return 0;
}
