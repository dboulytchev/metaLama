SHELL := /bin/bash

FILES=$(wildcard *.lama)
ALL=$(sort $(FILES:.lama=.o))
LAMAC=lamac

.PHONY: all clean

all: Grammar.o 
	$(LAMAC) -I . -o Test Test.lama

%.o: %.lama
	$(LAMAC) -I . -c $<


clean:
	rm -Rf *.s *.o *.i *~ *.html *.sm Test

