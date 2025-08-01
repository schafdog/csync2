
# Test scripts are listed explicitly for portability
EXTRA_DIST = $(check_SCRIPTS) portable_touch.sh update_touch_commands.sh normalize_paths.sh update_references.sh \
	update_database_collation.sh create_csync2_schema.sql cleanup_raw_logs.sh

check_SCRIPTS = younger_auto_resolve.sh older_auto_resolve.sh move_hardlinks.sh maildir.sh \
	new_hardlinks.sh different.sh dir_time.sh move_local.sh simple.sh remove_config.sh \
	type_change.sh recursive.sh fix_missing_path.sh utf8_latin1.sh symlink.sh \
	digest.sh

# test_new_modified_rm.sh

SUBDIRS = ../src

TESTS = $(check_SCRIPTS)

MAINTAINERCLEANFILES = Makefile.in

CONFIG_CLEAN_FILES=*.log *.dif

clean-local:
	rm -f *.log *.dif

# Pattern rules replaced with explicit targets for portability
# Use: make <testname> to run individual tests

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
