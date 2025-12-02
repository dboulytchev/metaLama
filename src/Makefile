SHELL := /bin/bash

FILES=$(wildcard *.lama)
ALL=$(sort $(FILES:.lama=.o))
LAMAC=lamac

.PHONY: all clean

all: Grammar.o Test.o
	$(LAMAC) -I . -o test $<

test.o: Grammar.o

%.o: %.lama
	$(LAMAC) -I . -c $<


clean:
	rm -Rf *.s *.o *.i *~ *.html *.sm test

