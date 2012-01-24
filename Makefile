PDFLATEX=pdflatex --shell-escape

MAIN_TEX_FILE=rss12humanoids

all: $(wildcard src/*.tex) $(MAIN_TEX_FILE).tex
	$(PDFLATEX) $(MAIN_TEX_FILE).tex && \
	bibtex $(MAIN_TEX_FILE) && \
	$(PDFLATEX) $(MAIN_TEX_FILE).tex && \
	$(PDFLATEX) $(MAIN_TEX_FILE).tex && \
	$(PDFLATEX) $(MAIN_TEX_FILE).tex

clean:
	rm -rf $(MAIN_TEX_FILE).t2d
	rm -f $(MAIN_TEX_FILE).bbl
	rm -f $(MAIN_TEX_FILE).blg

.PHONY: all
