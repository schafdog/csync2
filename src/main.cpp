/*  -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*- */

int csync2_main(int argc, char **argv);
#include "version.h"
#include <cstdio>
#include "config.h"

const char *csync2_git_version() {
	return CSYNC_GIT_VERSION;
}

void csync2_version(void)
{
	printf("\n" PACKAGE_STRING " - cluster synchronization tool, 2nd generation\n"
		   "LINBIT Information Technologies GmbH <http://www.linbit.com>\n"
		   "Copyright (C) 2004, 2005  Clifford Wolf <clifford@clifford.at>\n"
		   "Copyright (C) 2010  Dennis Schafroth <dennis@schafroth.com>\n"
		   "Copyright (C) 2010  Johannes Thoma <johannes.thoma@gmx.at>\n"
		   "\n"
#ifdef CSYNC_GIT_VERSION
		   "git: " CSYNC_GIT_VERSION "\n"
#endif
	);
}

int  main(int argc, char **argv) {
    return csync2_main(argc, argv);
}
