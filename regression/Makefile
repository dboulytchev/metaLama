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
	@ulimit -s -S 32768; set -e; for f in test*.lama; do echo "$$f"; $(QUOTATION_TESTER) "$$f"; done
	@echo "Quotation tests: expressions"
	@ulimit -s -S 32768; set -e; for f in expressions/generated*.lama; do echo "$$f"; $(QUOTATION_TESTER) "$$f"; done
	@echo "Quotation tests: deep expressions"
	@ulimit -s -S 32768; set -e; for f in deep-expressions/generated*.lama; do echo "$$f"; $(QUOTATION_TESTER) "$$f"; done
	@echo "All quotation tests passed."

clean:
	$(RM) *.s *.i *~ $(LOGS) $(TESTS) *.run *.sm
	make -C expressions clean
	make -C deep-expressions clean
	