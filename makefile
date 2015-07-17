LATEX=pdflatex
#LATEX=lualatex

TEXFILES=openmp-advanced.tex advanced.tex
all: openmp-advanced.pdf

openmp-advanced.pdf: $(TEXFILES) beamerthemeCSCS.sty
	$(LATEX) openmp-advanced.tex

force : openmp-advanced.pdf
	$(LATEX) openmp-advanced.tex

images : images/*.tex
	cd images; make;

clean:
	rm -f openmp-advanced.pdf
	rm -f *.aux *.dvi *.log *.nav *.out *.snm *.toc *.vrb
