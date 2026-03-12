TESTS=$(sort $(basename $(wildcard test*.lama)))
LOGS=$(TESTS:=.log)

LAMAC=../src/lama-impl
RM=rm -rf

.PHONY: check $(TESTS)

check: $(TESTS) expr_tests

$(TESTS): %: %.lama
	@echo $@
	@ulimit -s -S 32768; cat $@.input | $(LAMAC) $@.lama -i > $@.log && diff $@.log orig/$@.log 
	@ulimit -s -S 32768; cat $@.input | $(LAMAC) $@.lama -s > $@.log && diff $@.log orig/$@.log
	$(LAMAC) $@.lama && cat $@.input | ./$@ > $@.log && diff $@.log orig/$@.log

expr_tests:
	make -C expressions
	make -C deep-expressions

QUOTATION_TESTER=../src/quotation-test

quotation_check:
	@echo "Quotation tests: regression tests"
	@ulimit -s -S 32768; $(QUOTATION_TESTER) test*.lama
	@echo "Quotation tests: expressions"
	@ulimit -s -S 32768; $(QUOTATION_TESTER) expressions/generated*.lama
	@echo "Quotation tests: deep expressions"
	@ulimit -s -S 32768; $(QUOTATION_TESTER) deep-expressions/generated*.lama
	@echo "All quotation tests passed."

clean:
	$(RM) *.s *.i *~ $(LOGS) $(TESTS) *.run *.sm
	make -C expressions clean
	make -C deep-expressions clean
