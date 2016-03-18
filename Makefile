.PHONY: all clean

all: paper.pdf

paper.pdf: paper.tex # img/*.png
	pdflatex -interaction=nonstopmode -halt-on-error paper.tex && \
	pdflatex -interaction=nonstopmode -halt-on-error paper.tex

clean:
	rm -f paper.pdf *.aux *.log *.toc *.out *.pdf
