all: oop.db ../../src/img/oop.png ../../src/img/cqrs.png cqrs.db

oop.db: oop.sql oop_data.sql
	sqlite3 oop.db < oop.sql
	sqlite3 oop.db < oop_data.sql

cqrs.db: cqrs.sql 
	sqlite3 cqrs.db < cqrs.sql

../../src/img/oop.png: oop.png
	cp $? $@
oop.png: oop.pdf
	convert -density 300 $? -quality 90 $@
oop.pdf: oop.tex
	pdflatex oop.tex

../../src/img/cqrs.png: cqrs.png
	cp $? $@
cqrs.png: cqrs.pdf
	convert -density 300 $? -quality 90 $@
cqrs.pdf: cqrs.tex
	pdflatex cqrs.tex

clean:
	rm -f *.log *.aux
