%option noyywrap
%{
#include<stdio.h>
%}

%%
^[0-9]* printf("Integer Positive");
^[-0-9]* printf("Integer Negtive");
^[0-9]*[.][0-9] printf("Float Positive");
^[-0-9]*[.][0-9] printf("Float Negtive");
%%
int main()
{
yylex();
return 0;
}