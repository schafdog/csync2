#ifndef MAIN_H
#define MAIN_H 1

#ifdef __cplusplus
extern "C" {
#endif

int csync2_main(int argc, char **argv);
void csync2_version();
const char *csync2_git_version();

#ifdef __cplusplus
}
#endif

#endif
