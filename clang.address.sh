#!/bin/bash
CC=clang CFLAGS="-O1 -fsanitize=address -fno-omit-frame-pointer" LDFLAGS="-fsanitize=address" ./configure
