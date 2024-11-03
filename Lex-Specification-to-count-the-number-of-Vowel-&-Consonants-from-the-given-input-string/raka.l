%{
#include <stdio.h>
int vowels = 0, consonants = 0;
%}
%%
[aAeEiIoOuU] { vowels++; }          
[a-zA-Z]   { consonants++; }        
\n         { printf("Vowels: %d, Consonants: %d\n", vowels, consonants); vowels = 0; consonants = 0; } 
.          
%%
int yywrap() { return 1; }

int main() {
    yylex();
    return 0;
}