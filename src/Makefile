SHELL := /bin/bash

FILES=$(wildcard *.lama)
ALL=$(sort $(FILES:.lama=.o))
LAMAC=lamac

.PHONY: all clean

all: Parser.o Lexer.o Grammar.o X86.o SM.o Manifest.o
	$(LAMAC) -g -I . -o lama-impl Driver.lama

Parser.o: Lexer.o Grammar.o

Builtins.o: World.o

State.o: Lexer.o Parser.o

Expr.o: State.o Builtins.o

SM.o: State.o World.o Expr.o Parser.o Lexer.o Builtins.o

X86.o: SM.o Manifest.o

%.o: %.lama
	$(LAMAC) -g -I . -c $<

clean:
	rm -Rf *.s *.o *.i *~ *.html *.sm lama-impl

