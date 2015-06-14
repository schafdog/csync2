check_SCRIPTS = local.sh peer.sh ../csync2

EXTRA_DIST = $(wildcard *.test) $(check_SCRIPTS)

TESTS = $(check_SCRIPTS)

MAINTAINERCLEANFILES = Makefile.in

CONFIG_CLEAN_FILES=*.log *.dif

clean-local:
	rm -f *.log *.dif

all: tests ../csync2

tests: different dir_time maildir move_local simple

different:
	./local.sh test_different.test

dir_time:
	./local.sh test_dir_time.test  

maildir:
	./local.sh test_maildir.test

move_local: 
	./local.sh test_move_local.test  

simple:
	./local.sh test_simple.test

new_modified_rm:
	./local.sh test_simple.test

dist-hook:
	cp ${srcdir}/test_*.res $(distdir)
	mkdir $(distdir)/set2
	cp ${srcdir}/set2/*.xml $(distdir)/set2
