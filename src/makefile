main: lexer-alex parser-happy
	ghc --make -o myinterpreter Main && rm *.hi *.o

lexer-alex:
	alex Lexer.x

parser-happy:
	happy Parser.y
