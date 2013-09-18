# Makefile

filename=thesis

#pdf: ps
#	 ps2pdf ${filename}.ps

#ps: dvi
#	 dvips ${filename}.dvi

pdf:
	 pdflatex -shell-escape ${filename}
	 bibtex ${filename} || true
	 pdflatex -shell-escape ${filename}
	 pdflatex -shell-escape ${filename}

read:
	 evince ${filename}.pdf &

clean:
	 rm -f ${filename}.ps ${filename}.log ${filename}.aux 
	 rm -f ${filename}.out ${filename}.dvi ${filename}.bbl ${filename}.blg
	 rm -f ${filename}.toc ${filename}.lof ${filename}.lot ${filename}.brf

