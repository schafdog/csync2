
MYTESTS:=$(patsubst %.test,%.sh,$(wildcard *.test))
EXTRA_DIST = $(MYTESTS) $(check_SCRIPTS)

check_SCRIPTS = auto_resolve.sh move_hardlink.sh test_maildir.sh test_new_modified_rm.sh \
	new_hardlinks.sh test_different.sh test_dir_time.sh test_move_local.sh test_simple.sh

TESTS = $(check_SCRIPTS)

MAINTAINERCLEANFILES = Makefile.in

CONFIG_CLEAN_FILES=*.log *.dif

clean-local:
	rm -f *.log *.dif

%.test:
	./local.sh $@ || (echo "Test $@ failed" && exit 1)

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