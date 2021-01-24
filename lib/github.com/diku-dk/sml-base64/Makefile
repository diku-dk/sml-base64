
MLCOMP ?= mlton

.PHONY: all
all: base64.exe

.PHONY: test
test: base64_test.res
	cat base64_test.res

.PHONY: clean
clean:
	rm -rf MLB *~ .*~ *.exe *.out *.res

%.exe: %.mlb base64.sml base64.sig base64_test.sml
	$(MLCOMP) -output $@ $<

%.out: %.exe Makefile
	./$< > $@

%.res: %.out
	@(diff -aq $< $<.ok > /dev/null 2>&1; \
         if [ $$? -eq 0 ]; then \
             echo "Test $*.exe: OK" > $@ \
         ; else \
             if [ -e $<.ok ]; then \
                echo "Test $*.exe: *** ERR: file $< differs from $<.ok ***" > $@ ; \
                diff -u $< $<.ok >> $@ ; \
                true \
             ; else \
                echo "Test $*.exe: *** ERR: file $<.ok does not exist ***" > $@ \
             ; fi \
         ; fi)
