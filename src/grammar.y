%{
   #include <stdio.h>
   #include <stdlib.h>
   #include "rpgcc.h"
%}

%token DISPLAY EQUALS LR ON QUOTE RETURN SEMICOLON

%start program
%%

program: statementList
       ;

expression: 
       ;

expressionList: expression
	  ;

statement: expressionList
       | DISPLAY QUOTE QUOTE SEMICOLON
         { printf("printf("); printf("\""); printf("\""); printf(");"); }
       | LR EQUALS ON SEMICOLON
       | RETURN SEMICOLON
         { printf("return"); printf(";"); }
       ;

statementList: statement
       |  statementList statement

       ;

%%
