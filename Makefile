# Makefile

filename=thesis

default: pdf

#pdf: ps
#	 ps2pdf ${filename}.ps

#ps: dvi
#	 dvips ${filename}.dvi

pdf:
	 pdflatex -output-directory=out ${filename} 
	 bibtex out/${filename} 
	 pdflatex -output-directory=out ${filename}
	 pdflatex -output-directory=out ${filename}
	 # -shell-escape # used with minted

read:
	 evince out/${filename}.pdf &

clean:
	 rm -f ${filename}.ps ${filename}.log ${filename}.aux 
	 rm -f ${filename}.out ${filename}.dvi ${filename}.bbl ${filename}.blg
	 rm -f ${filename}.toc ${filename}.lof ${filename}.lot ${filename}.brf 
	 rm -f ${filename}.pyg

