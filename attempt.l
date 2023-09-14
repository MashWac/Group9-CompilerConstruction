%{
#include <stdio.h>
%}

%%
[a-zA-Z0-9]+   { printf("%s\n", yytext); }
[ \t\n]     /* For using whitespace as delimiter... Basically jumps out of the above code*/
.           /* Ignore any other characters */

%%
int yywrap(){}
int main() {
    yylex();
    return 0;
}
