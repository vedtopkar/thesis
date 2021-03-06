filename=thesis
xelatex=xelatex
bibtex=bibtex
xelatex_flags=--shell-escape --file-line-error

pdf: 
	$(xelatex) $(xelatex_flats) $(filename)
	$(bibtex) $(filename)
	$(xelatex) $(xelatex_flats) $(filename)
	$(xelatex) $(xelatex_flats) $(filename)
	open $(filename).pdf

xelatex: ; $(xelatex) $(xelatex_flats) $(filename)

bibtex: ; $(bibtex) $(filename)

clean:
	rm -f *.aux
	rm -f *.log
	rm -f *.bbl
	rm -f *.blg
	rm -f *.out
	rm -f *.toc
	rm -f TSWLatexianTemp*

