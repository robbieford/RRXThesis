
default:
	mkdir -p out
	pdflatex -draftmode -output-directory out -jobname thesis main.tex
	cd out; bibtex thesis.aux
	pdflatex -output-directory out -jobname thesis main.tex
	pdflatex -output-directory out -jobname thesis main.tex

clean:
	rm -rf out
