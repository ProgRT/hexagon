.PHONY: clean install test

t3.pdf: t3.tex hexagon.sty
	luatex t3

clean:
	rm -f *.log *.nav *.aux *.out *.snm *.toc *.ent

install:
	bash ./install.sh
