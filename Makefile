QUARTO = quarto
QMD_FILES = $(wildcard *.qmd)
HTML_FILES = $(QMD_FILES:.qmd=.html)

all: doc

doc: $(HTML_FILES)
	$(QUARTO) render

clean:
	rm -rf doc
