
all:
	flex lexer.l
	bison -d grammar.y
	gcc -o rpgcc rpgcc.c grammar.tab.c lex.yy.c

clean:
	rm grammar.tab.* lex.yy.c rpgcc
