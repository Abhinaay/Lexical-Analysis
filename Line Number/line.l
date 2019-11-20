/* Program to add line numbers 
to a given file*/
%{ 
int line_number = 1; // initializing line number to 1 
%} 

/* simple name definitions to simplify 
the scanner specification name 
definition of line*/
line .*\n	 

%% 
{line} { printf("%10d %s", line_number++, yytext); } 
%% 

int yywrap(){} 

int main(int argc, char*argv[]) 
{ 
extern FILE *yyin;

yyin = fopen("f.txt","r");

yylex(); // The function that starts the analysis. 

return 0; 
} 
