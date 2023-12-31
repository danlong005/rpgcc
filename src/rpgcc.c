#include <stdio.h>
#include <stdlib.h>
#include "rpgcc.h"

void yyerror(char *s) {
	fprintf(stderr, "error: %s\n", s);
}

int main(int argc, char**argv) {
	extern FILE *yyin;

	++argv; 
	--argc;

	yyin = fopen(argv[0], "r");

	return yyparse();
}
