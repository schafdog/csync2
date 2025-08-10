#!/usr/bin/env bash
cat configure.ac Makefile.am | sha256sum | cut -d' ' -f1
