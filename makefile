include vars.mak

default: make_all

HOME=.


make_all:  
	@echo "Starting compilation"
	${GXX} --version
	${MAKE} src

src:
	@echo "comipiling 'src'"
	cd src
	${MAKE}



