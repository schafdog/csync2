export ASAN_SYMBOLIZER_PATH=/usr/bin/llvm-symbolizer-3.5
export ASAN_OPTIONS=log_path=./asan.log:symbolize=1:fast_unwind_on_malloc=false:detect_leaks=1:print_stats=1

