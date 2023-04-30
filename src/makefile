
default: subdirs

SUBDIRS = apps

.PHONY: subdirs $(SUBDIRS)

subdirs: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

# Check this for reference to directory compilation order:
# https://www.gnu.org/software/make/manual/html_node/Phony-Targets.html
