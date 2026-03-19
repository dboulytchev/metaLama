SHELL := /bin/bash

FILES=$(wildcard *.lama)
ALL=$(sort $(FILES:.lama=.o))
LAMAC=lamac

.PHONY: all clean

all: Parser.o Lexer.o Grammar.o X86.o SM.o Manifest.o
	$(LAMAC) -g -I . -o lama-impl Driver.lama

quotation-test: Parser.o Lexer.o Grammar.o Expr.o Quotator.o
	$(LAMAC) -g -I . -o quotation-test QuotationTest.lama

Parser.o: Lexer.o Grammar.o Expr.o State.o World.o

Builtins.o: World.o

State.o: Lexer.o

Expr.o: State.o Builtins.o

Grammar.o: Quotator.o

SM.o: State.o World.o Expr.o Lexer.o Builtins.o

X86.o: SM.o Manifest.o

%.o: %.lama
	$(LAMAC) -g -I . -c $<

clean:
	rm -Rf *.s *.o *.i *~ *.html *.sm lama-impl quotation-test

