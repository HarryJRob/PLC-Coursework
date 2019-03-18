PATH = ../src/

main: Evaluator.o
	ghc -v -c -O Main.hs

Evaluator.o: Lexer.o Parser.o
	ghc -v -c $(PATH)Evaluator.hs

Lexer.o: Lexer.hs
	ghc -c -O $(PATH)Lexer.hs

Lexer.hs:
	alex $(PATH)Lexer.x

Parser.o: Parser.hs
	ghc -c -O $(PATH)Parser.hs

Parser.hs:
	happy $(PATH)Parser.y
