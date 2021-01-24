
.PHONY: all
all:
	$(MAKE) -C lib/github.com/diku-dk/sml-base64 all

.PHONY: test
test:
	$(MAKE) -C lib/github.com/diku-dk/sml-base64 test

.PHONY: clean
clean:
	$(MAKE) -C lib/github.com/diku-dk/sml-base64 clean
	rm -rf MLB *~ .*~
