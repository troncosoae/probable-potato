export GXX = g++
export GXXFLAGS = 
export HOME = $(shell pwd)
export BIN = $(shell pwd)/bin
export BIN_REL = ${BIN}/rel
export BIN_DBG = ${BIN}/debug

export TARGET_DIR = ${BIN_REL}

default: install

SUBDIRS = src

.PHONY: subdirs $(SUBDIRS) default

install: TARGET_DIR = ${BIN_REL}
install: subdirs
	
debug: TARGET_DIR = ${BIN_DBG}
debug: GXXFLAGS += -g
debug: subdirs

subdirs: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

# Check this for reference to directory compilation order:
# https://www.gnu.org/software/make/manual/html_node/Phony-Targets.html

