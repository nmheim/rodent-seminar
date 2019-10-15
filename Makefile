TARGETS = main.pdf
SOURCES = $(shell find . -name '*.tex')

main.pdf: main.tex $(SOURCES)
	xelatex main.tex
	xelatex main.tex
	xelatex main.tex

clean:
	rm main.pdf
	rm main.aux
	rm main.log
	rm main.out
	rm main.nav
	rm main.toc
	rm main.snm


open:
	evince $(TARGETS) &
