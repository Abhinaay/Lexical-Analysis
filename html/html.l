%{
#include<stdio.h>
%}

%%
\<[^>]*\> fprintf(yyout,"%s\n",yytext);
.|\n; 
%%

int yywrap()
{
return 1;
}

int main()
{
yyin=fopen("index.html","r");
yyout=fopen("output7.txt","w");
yylex();
return 0;
}