%option noyywrap
%{
   #include "rpgcc.h"
   #include "grammar.tab.h"
%}

%%
"'"        { return QUOTE; }
";"		   { return SEMICOLON; }
"*INLR"		{ return LR; }
"="		   { return EQUALS; }
"*ON"		   { return ON; }
"RETURN"    { return RETURN; }
"DSPLY"     { return DISPLAY; }
%%
