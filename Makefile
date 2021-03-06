all: module doco

module:
	python setup.py build

install:
	python setup.py install

doco:
	epydoc -n "PyBison API Reference" -o doc/api build/lib*/bison.py

clean:
	rm -rf *~ *.output tokens.h *.tab.* *.yy.c java-grammar new.* *.o *.so dummy build *.pxi *-lexer.c
	rm -rf *-parser.y *-parser.c *-parser.h pybison.c pybison.h
	rm -rf bison.c bison.h
	rm -rf *.pyc
	rm -rf tmp.*
	rm -f src/pyrex/bison_.pxi src/pyrex/bison_.c src/pyrex/bison_.h
