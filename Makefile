# Makefile

filename=sdvc2013

pdf:
	 pdflatex ${filename}

read:
	 evince ${filename}.pdf &

clean:
	 rm -f ${filename}.nav ${filename}.log ${filename}.out
	 rm -f ${filename}.toc ${filename}.snm ${filename}.aux 

