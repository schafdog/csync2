#!/usr/bin/env bash
cat configure.ac Makefile.am | ./test/portable_hash.sh | cut -d' ' -f1
