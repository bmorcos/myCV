all:
	xelatex bmorcos_cv.tex
	biber bmorcos_cv
	xelatex bmorcos_cv.tex

clean:
	rm -f *.aux *.blg *.out *.bbl *.log *.bcf *.xml

.PHONY: all clean
