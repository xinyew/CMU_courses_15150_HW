FILES = code/sublist-sum/sublistSum.sml code/lca/lca.sml code/flatten/flatten.sml code/expressions/exp.sml collab.txt

.PHONY: all clean


all: handin.zip

clean:
	rm -f handin.zip

handin.zip: $(FILES)
	zip $@ $^
