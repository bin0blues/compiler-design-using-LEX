%{
#include <stdio.h>
%}
%%
(is|am|are|were|go) { printf("Verb\n"); }
(very|simply|quickly|gently) { printf("Adverb\n"); }
(to|from|behind|between) { printf("Preposition\n"); }
(if|then) { printf("Conjunction\n"); }
%%
int yywrap() { return 1; }
int main() {
    yylex();
    return 0;
}