export ASAN_SYMBOLIZER_PATH=/usr/bin/llvm-symbolizer-3.5
ASAN_OPTIONS=symbolize=1 ./csync2 -P debian.schafroth.dk $*
