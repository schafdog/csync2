/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30802

/* Bison version string.  */
#define YYBISON_VERSION "3.8.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 21 "cfgfile_parser_processed.y"

#include "csync2.hpp"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <fnmatch.h>
#include <ctype.h>
#include "utils.hpp"

struct csync_group    *csync_group  = 0;
struct csync_prefix   *csync_prefix = 0;
struct csync_nossl    *csync_nossl  = 0;
struct csync_hostinfo *csync_hostinfo = 0;

int csync_ignore_uid = 0;
int csync_ignore_gid = 0;
int csync_ignore_mod = 0;
unsigned csync_lock_timeout = 12;
unsigned csync_lock_time = 60;
char *csync_tempdir = NULL;

int cfg_db_version = -1;
int cfg_protocol_version = -1;
int cfg_ip_version = -1;
int cfg_patch_mode = 0;

#ifdef __CYGWIN__
int csync_lowercyg_disable = 0;
int csync_lowercyg_used = 0;
#endif

extern void yyerror(const char* text);
extern int yylex(void);
extern int yylineno;

void yyerror(const char *text)
{
	csync_fatal("Near line %d: %s\n", yylineno, text);
}

static void create_group(char *name)
{
	static int autonum = 1;
	struct csync_group *t =
		calloc(1, sizeof(struct csync_group));

	if (name == 0)
	    // missing check on result
	    asprintf(&name, "group_%d", autonum++);
	
	t->next = csync_group;
	t->auto_method = -1;
	t->gname = name;
	t->backup_generations = 3;
	t->host = 0;
	t->pattern = 0;
	t->flags = 0;
	csync_group = t;
	csync_log(LOG_DEBUG, 3, "New group: %s\n", name);
}

static void add_host(char *hostname, char *peername, int slave)
{
    int i;
    for (i=0; hostname[i]; i++)
		hostname[i] = tolower(hostname[i]);
    for (i=0; peername[i]; i++)
		peername[i] = tolower(peername[i]);
    if ( strcmp(hostname, g_myhostname) == 0 ) {
		csync_group->local_slave = slave;
		if (!csync_group->myname)
			csync_group->myname = peername;
		else
			free(peername);
    } else {
	struct csync_group_host *t =
	    calloc(1, sizeof(struct csync_group_host));
	t->hostname = peername;
	t->on_left_side = !csync_group->myname;
	t->slave = slave;
	t->next = csync_group->host;
	csync_group->host = t;
	csync_log(LOG_DEBUG, 3, "New group:host: %s %s\n",csync_group->gname, peername);
    }
    free(hostname);
}

static void add_patt(int patterntype, const char *p_pattern)
{
	struct csync_group_pattern *t =
		calloc(1, sizeof(struct csync_group_pattern));
	int i;
	char *pattern = strdup(p_pattern);

#ifdef __CYGWIN__
	if (isalpha(pattern[0]) && pattern[1] == ':' &&
	    (pattern[2] == '/' || pattern[2] == '\\')) {
		char *new_pattern, *p;
		asprintf(&new_pattern, "/cygdrive/%c/%s",
			tolower(pattern[0]), pattern+3);
		for (p = new_pattern; *p; p++)
			if (*p == '\\') *p = '/';
		free(pattern);
		pattern = new_pattern;
	}
#endif
	/* strip trailing slashes from pattern */
	for (i=strlen(pattern)-1; i>0; i--)
		if (pattern[i] == '/')
			pattern[i] = 0;
		else
			break;

	/* if you use ** at least once anywhere in the pattern,
	 * _all_ stars in the pattern, even single ones,
	 * will match slashes. */
	t->star_matches_slashes = !!strstr(pattern, "**");
	t->isinclude = patterntype >= 1;
	t->iscompare = patterntype >= 2;
	t->pattern = strdup(prefixsubst(pattern));
	t->next = csync_group->pattern;
	csync_group->pattern = t;
	csync_log(LOG_DEBUG, 3, "New group:host:pattern %s %s %s\n",csync_group->gname, csync_group->host->hostname, pattern);
	free(pattern);
}

static void set_key(char *keyfilename)
{
    FILE *keyfile;
    char line[1024];
    int i;

    if ( csync_group->key )
	csync_fatal("Config error: a group might only have one key.\n");
    
    if ( (keyfile = fopen(keyfilename, "r")) == 0 ||
	 fgets(line, 1024, keyfile) == 0 )
	csync_fatal("Config error: Can't read keyfile %s.\n", keyfilename);

    for (i=0; line[i]; i++) {
	if (line[i] == '\n') { line[i]=0; break; }
	if ( !(line[i] >= 'A' && line[i] <= 'Z') &&
	     !(line[i] >= 'a' && line[i] <= 'z') &&
	     !(line[i] >= '0' && line[i] <= '9') &&
	     line[i] != '.' && line[i] != '_' )
	    csync_fatal("Unallowed character '%c' in key file %s.\n",
			line[i], keyfilename);
    }

    if ( strlen(line) < 32 )
	csync_fatal("Config error: Key in file %s is too short.\n", keyfilename);

    csync_group->key = strdup(line);
    free(keyfilename);
    fclose(keyfile);
}

static void set_auto(char *auto_method)
{
    int method_id = -1;
    
    if (csync_group->auto_method >= 0)
	csync_fatal("Config error: a group might only have one auto-setting.\n");
    
    if (!strcmp(auto_method, "none"))
	method_id = CSYNC_AUTO_METHOD_NONE;

    if (!strcmp(auto_method, "first"))
	method_id = CSYNC_AUTO_METHOD_FIRST;

    if (!strcmp(auto_method, "younger"))
	method_id = CSYNC_AUTO_METHOD_YOUNGER;
    
    if (!strcmp(auto_method, "older"))
	method_id = CSYNC_AUTO_METHOD_OLDER;
    
    if (!strcmp(auto_method, "bigger"))
	method_id = CSYNC_AUTO_METHOD_BIGGER;
    
    if (!strcmp(auto_method, "smaller"))
	method_id = CSYNC_AUTO_METHOD_SMALLER;

    if (!strcmp(auto_method, "left"))
	method_id = CSYNC_AUTO_METHOD_LEFT;

    if (!strcmp(auto_method, "right"))
	method_id = CSYNC_AUTO_METHOD_RIGHT;

    if (method_id < 0)
	csync_fatal("Config error: Unknown auto-setting '%s' (use "
		    "'none', 'younger', 'older', 'bigger', 'smaller', "
		    "'left' or 'right').\n", auto_method);

    csync_group->auto_method = method_id;
    free(auto_method);
}

static void set_bak_dir(char *dir)
{
    csync_group->backup_directory = dir;
}

static void set_bak_gen(char *gen)
{
    csync_group->backup_generations = atoi(gen);
    free(gen);
}

static void set_flags(char *flags)
{
    csync_group->backup_generations = atoi(flags);
    free(flags);
}

static void check_group(void)
{
    if ( ! csync_group->key )
	csync_fatal("Config error: every group must have a key.\n");

    if ( csync_group->auto_method < 0 )
	csync_group->auto_method = CSYNC_AUTO_METHOD_NONE;
    
    /* re-order hosts and pattern */
    {
	struct csync_group_host *t = csync_group->host;
	csync_group->host = 0;
	while ( t ) {
	    struct csync_group_host *next = t->next;
	    t->next = csync_group->host;
	    csync_group->host = t;
	    t = next;
	}
    }
    {
	struct csync_group_pattern *t = csync_group->pattern;
	csync_group->pattern = 0;
	while ( t ) {
	    struct csync_group_pattern *next = t->next;
	    t->next = csync_group->pattern;
	    csync_group->pattern = t;
	    t = next;
	}
    }

    if (g_active_peerlist) {
	struct csync_group_host *h;
	int i=0;
	size_t thisplen;

	while (g_active_peerlist[i]) {
	    thisplen = strcspn(g_active_peerlist + i, ",");

	    for (h=csync_group->host; h; h=h->next)
		if (strlen(h->hostname) == thisplen && !strncmp(g_active_peerlist + i, h->hostname, thisplen))
		    goto foundactivepeers;

	    i += thisplen;
	    while (g_active_peerlist[i] == ',') i++;
	}
    } else
foundactivepeers:
	csync_group->hasactivepeers = 1;

    if (g_active_grouplist && csync_group->myname)
    {
	int i=0, gnamelen = strlen(csync_group->gname);

	while (g_active_grouplist[i])
	{
	    if ( !strncmp(g_active_grouplist+i, csync_group->gname, gnamelen) &&
		 (g_active_grouplist[i+gnamelen] == ',' || !g_active_grouplist[i+gnamelen]) )
		goto found_asactive;
	    while (g_active_grouplist[i])
		if (g_active_grouplist[i++]==',') break;
	}

	csync_group->myname = 0;
found_asactive:	;
    }
}

static void create_action(void)
{
    struct csync_group_action *t =
		calloc(1, sizeof(struct csync_group_action));
    t->next = csync_group->action;
    t->logfile = strdup("/dev/null");
    csync_group->action = t;
}

static void action_pattern_destroy(struct csync_group_action_pattern *pattern) {
    if (!pattern)
      return ;
    action_pattern_destroy(pattern->next);
    free(pattern->pattern);
    free(pattern);
}

static void action_command_destroy(struct csync_group_action_command *command) {
  if (!command)
    return ;
  action_command_destroy(command->next);
  free(command->command);
  free(command);
}

static void action_destroy(struct csync_group_action *action) {
    if (!action)
	return;
    action_destroy(action->next);
    action_pattern_destroy(action->pattern);
    action_command_destroy(action->command);
    free(action->logfile);
    free(action);
}

static void host_destroy(struct csync_group_host *host) {
    if (!host)
	return ; 
    host_destroy(host->next);
    free(host->hostname);
    free(host);
}

static void csync_hostinfo_destroy(struct csync_hostinfo *hostinfo) {
    if (!hostinfo)
	return ; 
    csync_hostinfo_destroy(hostinfo->next);
    free(hostinfo->name);
    free(hostinfo->host);
    free(hostinfo->port);
    free(hostinfo);
}

static void pattern_destroy(struct csync_group_pattern *pattern) {
  if (!pattern)
    return ; 
  pattern_destroy(pattern->next);
  free(pattern->pattern);
  free(pattern);
}

void csync_config_destroy_group(struct csync_group *group) {
    if (!group) 
	return ; 
    csync_config_destroy_group(group->next);
    host_destroy(group->host);
    pattern_destroy(group->pattern);
    action_destroy(group->action);
    if (group->myname)
	free(group->myname);
    if (group->gname)
	free(group->gname);
    if (group->key)
	free(group->key);
    if (group->backup_directory)
	free(group->backup_directory);
    free(group);
}

static void add_action_pattern(const char *pattern)
{
    struct csync_group_action_pattern *t =
		calloc(1, sizeof(struct csync_group_action_pattern));
    t->star_matches_slashes = !!strstr(pattern, "**");
    t->pattern = strdup(pattern);
    t->next = csync_group->action->pattern;
    csync_group->action->pattern = t;
}

static void add_action_exec(char *command)
{
	struct csync_group_action_command *t =
		calloc(1, sizeof(struct csync_group_action_command));
	t->command = command;
	t->next = csync_group->action->command;
	csync_group->action->command = t;
}

static void set_action_logfile(char *logfile)
{
    char *oldlog = csync_group->action->logfile;
    if (oldlog)
		free(oldlog);
    csync_group->action->logfile = logfile;
}

static void set_action_dolocal(void)
{
	csync_group->action->do_local = 1;
}

static void set_action_dolocal_only(void)
{
	csync_group->action->do_local = 1;
	csync_group->action->do_local_only = 1;
}

static void set_lock_timeout(const char *timeout)
{
	csync_lock_time = atoi(timeout);
}

static void set_lock_time(const char *time)
{
	csync_lock_time = atoi(time);
}

static void set_tempdir(const char *tempdir)
{
	csync_tempdir = strdup(tempdir);
}

static void set_database(const char *filename)
{
    csync_database = strdup(filename);
}

static void set_database_version(char *version)
{
  cfg_db_version = atoi(version);
  free(version);
}

static void set_patch_mode(char *mode)
{
  cfg_patch_mode = atoi(mode);
  free(mode);
}

static void set_redis(filename_p filename)
{
    csync_redis = strdup(filename);
}

static void set_protocol_version(char *version)
{
  cfg_protocol_version = atoi(version);
  free(version);
}

static void set_ip_version(char *version)
{
  cfg_ip_version = atoi(version);
  free(version);
}

static void create_hostinfo_entry(char *name, char *host, char *service)
{
     struct csync_hostinfo *p =
		 calloc(1, sizeof(struct csync_hostinfo));
     p->next = csync_hostinfo;
     p->name = name;
     p->host = host;
     p->port = service;
     csync_log(LOG_DEBUG, 3, "New host alias: %s: %s %s\n", p->name, p->host, p->port);
     csync_hostinfo = p;
}

static void create_prefix(char *pname)
{
	struct csync_prefix *p =
		calloc(1, sizeof(struct csync_prefix));
	p->name = strdup(pname);
	p->next = csync_prefix;
	csync_prefix = p;
}

static void prefix_destroy(struct csync_prefix  *prefix)
{
    if (!prefix)
	return ;
    prefix_destroy(prefix->next);
    free(prefix->name);
    free(prefix->path);
    free(prefix);
}

static void create_prefix_entry(char *pattern,  char *path)
{
	int i;

	if (path[0] != '/')
		csync_fatal("Config error: Prefix '%s' is not an absolute path.\n", path);

	if (!csync_prefix->path && !fnmatch(pattern, g_myhostname, 0)) {
#ifdef __CYGWIN__
		if (isalpha(path[0]) && path[1] == ':' &&
		    (path[2] == '/' || path[2] == '\\')) {
			char *new_path, *p;
			asprintf(&new_path, "/cygdrive/%c/%s",
				tolower(path[0]), path+3);
			for (p = new_path; *p; p++)
				if (*p == '\\') *p = '/';
			free(path);
			path = new_path;
		}
#endif
		for (i=strlen(path)-1; i>0; i--)
			if (path[i] == '/')
				path[i] = 0;
			else
				break;

		csync_log(LOG_DEBUG, 3, "Prefix '%s' is set to '%s'.\n", csync_prefix->name, path);
		csync_prefix->path = path;
	} else
		free(path);
	free(pattern);
}

static void create_nossl(char *from, char *to)
{
	struct csync_nossl *t =
		calloc(1, sizeof(struct csync_nossl));
	t->pattern_from = from;
	t->pattern_to = to;
	t->next = csync_nossl;
	csync_nossl = t;
}


static void nossl_destroy(struct csync_nossl *t)
{
    if (!t)
		return;
    nossl_destroy(t->next);
    free(t->pattern_from);
    free(t->pattern_to);
    free(t);
}

static void create_ignore(char *propname)
{
	if ( !strcmp(propname, "uid") )
		csync_ignore_uid = 1;
	else
	if ( !strcmp(propname, "gid") )
		csync_ignore_gid = 1;
	else
	if ( !strcmp(propname, "mod") )
		csync_ignore_mod = 1;
	else
		csync_fatal("Config error: Unknown 'ignore' property: '%s'.\n", propname);

	free(propname);
}

void csync_config_destroy(void) {
    csync_debug(3, "csync_config_destroy\n");
    prefix_destroy(csync_prefix);
    csync_prefix = NULL;
    nossl_destroy(csync_nossl);
    if (csync_database) 
		free(csync_database);
    if (csync_redis)
		free(csync_redis);
    csync_nossl = NULL;
    csync_config_destroy_group(csync_group);
    csync_group = NULL;
    csync_hostinfo_destroy(csync_hostinfo);
    csync_hostinfo = NULL;
    // TOOD other struct
    csync_debug(3, "csync_config_destroy end\n");
}

static void disable_cygwin_lowercase_hack(void)
{
#ifdef __CYGWIN__
	if (csync_lowercyg_used)
		csync_fatal("Config error: 'nocygwinlowercase' must be at the top of the config file.\n");
	csync_lowercyg_disable = 1;
#else
	csync_fatal("Config error: Found 'nocygwinlowercase' but this is not a cygwin csync2.\n");
#endif
}


#line 650 "cfgfile_parser_processed.c"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

/* Use api.header.include to #include this header
   instead of duplicating it here.  */
#ifndef YY_YY_CFGFILE_PARSER_PROCESSED_H_INCLUDED
# define YY_YY_CFGFILE_PARSER_PROCESSED_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    TK_BLOCK_BEGIN = 258,          /* TK_BLOCK_BEGIN  */
    TK_BLOCK_END = 259,            /* TK_BLOCK_END  */
    TK_STEND = 260,                /* TK_STEND  */
    TK_AT = 261,                   /* TK_AT  */
    TK_AUTO = 262,                 /* TK_AUTO  */
    TK_NOSSL = 263,                /* TK_NOSSL  */
    TK_IGNORE = 264,               /* TK_IGNORE  */
    TK_GROUP = 265,                /* TK_GROUP  */
    TK_HOST = 266,                 /* TK_HOST  */
    TK_EXCL = 267,                 /* TK_EXCL  */
    TK_INCL = 268,                 /* TK_INCL  */
    TK_COMP = 269,                 /* TK_COMP  */
    TK_KEY = 270,                  /* TK_KEY  */
    TK_DATABASE = 271,             /* TK_DATABASE  */
    TK_DB_VERSION = 272,           /* TK_DB_VERSION  */
    TK_PROTOCOL_VERSION = 273,     /* TK_PROTOCOL_VERSION  */
    TK_PATCH_MODE = 274,           /* TK_PATCH_MODE  */
    TK_IP_VERSION = 275,           /* TK_IP_VERSION  */
    TK_REDIS = 276,                /* TK_REDIS  */
    TK_ACTION = 277,               /* TK_ACTION  */
    TK_PATTERN = 278,              /* TK_PATTERN  */
    TK_EXEC = 279,                 /* TK_EXEC  */
    TK_DOLOCAL = 280,              /* TK_DOLOCAL  */
    TK_LOGFILE = 281,              /* TK_LOGFILE  */
    TK_NOCYGLOWER = 282,           /* TK_NOCYGLOWER  */
    TK_PREFIX = 283,               /* TK_PREFIX  */
    TK_ON = 284,                   /* TK_ON  */
    TK_COLON = 285,                /* TK_COLON  */
    TK_POPEN = 286,                /* TK_POPEN  */
    TK_PCLOSE = 287,               /* TK_PCLOSE  */
    TK_BAK_DIR = 288,              /* TK_BAK_DIR  */
    TK_BAK_GEN = 289,              /* TK_BAK_GEN  */
    TK_DOLOCALONLY = 290,          /* TK_DOLOCALONLY  */
    TK_FLAGS = 291,                /* TK_FLAGS  */
    TK_TEMPDIR = 292,              /* TK_TEMPDIR  */
    TK_LOCK_TIMEOUT = 293,         /* TK_LOCK_TIMEOUT  */
    TK_HOSTS = 294,                /* TK_HOSTS  */
    TK_LOCK_TIME = 295,            /* TK_LOCK_TIME  */
    TK_STRING = 296                /* TK_STRING  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif
/* Token kinds.  */
#define YYEMPTY -2
#define YYEOF 0
#define YYerror 256
#define YYUNDEF 257
#define TK_BLOCK_BEGIN 258
#define TK_BLOCK_END 259
#define TK_STEND 260
#define TK_AT 261
#define TK_AUTO 262
#define TK_NOSSL 263
#define TK_IGNORE 264
#define TK_GROUP 265
#define TK_HOST 266
#define TK_EXCL 267
#define TK_INCL 268
#define TK_COMP 269
#define TK_KEY 270
#define TK_DATABASE 271
#define TK_DB_VERSION 272
#define TK_PROTOCOL_VERSION 273
#define TK_PATCH_MODE 274
#define TK_IP_VERSION 275
#define TK_REDIS 276
#define TK_ACTION 277
#define TK_PATTERN 278
#define TK_EXEC 279
#define TK_DOLOCAL 280
#define TK_LOGFILE 281
#define TK_NOCYGLOWER 282
#define TK_PREFIX 283
#define TK_ON 284
#define TK_COLON 285
#define TK_POPEN 286
#define TK_PCLOSE 287
#define TK_BAK_DIR 288
#define TK_BAK_GEN 289
#define TK_DOLOCALONLY 290
#define TK_FLAGS 291
#define TK_TEMPDIR 292
#define TK_LOCK_TIMEOUT 293
#define TK_HOSTS 294
#define TK_LOCK_TIME 295
#define TK_STRING 296

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 601 "cfgfile_parser_processed.y"

	char *txt;

#line 789 "cfgfile_parser_processed.c"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_CFGFILE_PARSER_PROCESSED_H_INCLUDED  */
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_TK_BLOCK_BEGIN = 3,             /* TK_BLOCK_BEGIN  */
  YYSYMBOL_TK_BLOCK_END = 4,               /* TK_BLOCK_END  */
  YYSYMBOL_TK_STEND = 5,                   /* TK_STEND  */
  YYSYMBOL_TK_AT = 6,                      /* TK_AT  */
  YYSYMBOL_TK_AUTO = 7,                    /* TK_AUTO  */
  YYSYMBOL_TK_NOSSL = 8,                   /* TK_NOSSL  */
  YYSYMBOL_TK_IGNORE = 9,                  /* TK_IGNORE  */
  YYSYMBOL_TK_GROUP = 10,                  /* TK_GROUP  */
  YYSYMBOL_TK_HOST = 11,                   /* TK_HOST  */
  YYSYMBOL_TK_EXCL = 12,                   /* TK_EXCL  */
  YYSYMBOL_TK_INCL = 13,                   /* TK_INCL  */
  YYSYMBOL_TK_COMP = 14,                   /* TK_COMP  */
  YYSYMBOL_TK_KEY = 15,                    /* TK_KEY  */
  YYSYMBOL_TK_DATABASE = 16,               /* TK_DATABASE  */
  YYSYMBOL_TK_DB_VERSION = 17,             /* TK_DB_VERSION  */
  YYSYMBOL_TK_PROTOCOL_VERSION = 18,       /* TK_PROTOCOL_VERSION  */
  YYSYMBOL_TK_PATCH_MODE = 19,             /* TK_PATCH_MODE  */
  YYSYMBOL_TK_IP_VERSION = 20,             /* TK_IP_VERSION  */
  YYSYMBOL_TK_REDIS = 21,                  /* TK_REDIS  */
  YYSYMBOL_TK_ACTION = 22,                 /* TK_ACTION  */
  YYSYMBOL_TK_PATTERN = 23,                /* TK_PATTERN  */
  YYSYMBOL_TK_EXEC = 24,                   /* TK_EXEC  */
  YYSYMBOL_TK_DOLOCAL = 25,                /* TK_DOLOCAL  */
  YYSYMBOL_TK_LOGFILE = 26,                /* TK_LOGFILE  */
  YYSYMBOL_TK_NOCYGLOWER = 27,             /* TK_NOCYGLOWER  */
  YYSYMBOL_TK_PREFIX = 28,                 /* TK_PREFIX  */
  YYSYMBOL_TK_ON = 29,                     /* TK_ON  */
  YYSYMBOL_TK_COLON = 30,                  /* TK_COLON  */
  YYSYMBOL_TK_POPEN = 31,                  /* TK_POPEN  */
  YYSYMBOL_TK_PCLOSE = 32,                 /* TK_PCLOSE  */
  YYSYMBOL_TK_BAK_DIR = 33,                /* TK_BAK_DIR  */
  YYSYMBOL_TK_BAK_GEN = 34,                /* TK_BAK_GEN  */
  YYSYMBOL_TK_DOLOCALONLY = 35,            /* TK_DOLOCALONLY  */
  YYSYMBOL_TK_FLAGS = 36,                  /* TK_FLAGS  */
  YYSYMBOL_TK_TEMPDIR = 37,                /* TK_TEMPDIR  */
  YYSYMBOL_TK_LOCK_TIMEOUT = 38,           /* TK_LOCK_TIMEOUT  */
  YYSYMBOL_TK_HOSTS = 39,                  /* TK_HOSTS  */
  YYSYMBOL_TK_LOCK_TIME = 40,              /* TK_LOCK_TIME  */
  YYSYMBOL_TK_STRING = 41,                 /* TK_STRING  */
  YYSYMBOL_YYACCEPT = 42,                  /* $accept  */
  YYSYMBOL_config = 43,                    /* config  */
  YYSYMBOL_block = 44,                     /* block  */
  YYSYMBOL_45_1 = 45,                      /* $@1  */
  YYSYMBOL_ignore_list = 46,               /* ignore_list  */
  YYSYMBOL_prefix_list = 47,               /* prefix_list  */
  YYSYMBOL_alias_list = 48,                /* alias_list  */
  YYSYMBOL_block_header = 49,              /* block_header  */
  YYSYMBOL_block_body = 50,                /* block_body  */
  YYSYMBOL_stmts = 51,                     /* stmts  */
  YYSYMBOL_stmt = 52,                      /* stmt  */
  YYSYMBOL_host_list = 53,                 /* host_list  */
  YYSYMBOL_host_list_slaves = 54,          /* host_list_slaves  */
  YYSYMBOL_excl_list = 55,                 /* excl_list  */
  YYSYMBOL_incl_list = 56,                 /* incl_list  */
  YYSYMBOL_comp_list = 57,                 /* comp_list  */
  YYSYMBOL_action = 58,                    /* action  */
  YYSYMBOL_59_2 = 59,                      /* $@2  */
  YYSYMBOL_action_stmts = 60,              /* action_stmts  */
  YYSYMBOL_action_stmt = 61,               /* action_stmt  */
  YYSYMBOL_action_pattern_list = 62,       /* action_pattern_list  */
  YYSYMBOL_action_exec_list = 63           /* action_exec_list  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_int8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
#if defined __GNUC__ && ! defined __ICC && 406 <= __GNUC__ * 100 + __GNUC_MINOR__
# if __GNUC__ * 100 + __GNUC_MINOR__ < 407
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")
# else
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# endif
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if !defined yyoverflow

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* !defined yyoverflow */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  35
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   114

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  42
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  22
/* YYNRULES -- Number of rules.  */
#define YYNRULES  67
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  127

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   296


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,   618,   618,   620,   624,   626,   625,   629,   632,   634,
     636,   638,   640,   642,   644,   646,   648,   649,   651,   653,
     657,   659,   663,   665,   669,   671,   673,   678,   680,   685,
     689,   691,   692,   696,   697,   698,   699,   700,   702,   704,
     706,   708,   712,   714,   716,   718,   721,   723,   725,   729,
     731,   735,   737,   741,   743,   749,   748,   754,   756,   760,
     761,   762,   764,   766,   770,   772,   776,   778
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if YYDEBUG || 0
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "TK_BLOCK_BEGIN",
  "TK_BLOCK_END", "TK_STEND", "TK_AT", "TK_AUTO", "TK_NOSSL", "TK_IGNORE",
  "TK_GROUP", "TK_HOST", "TK_EXCL", "TK_INCL", "TK_COMP", "TK_KEY",
  "TK_DATABASE", "TK_DB_VERSION", "TK_PROTOCOL_VERSION", "TK_PATCH_MODE",
  "TK_IP_VERSION", "TK_REDIS", "TK_ACTION", "TK_PATTERN", "TK_EXEC",
  "TK_DOLOCAL", "TK_LOGFILE", "TK_NOCYGLOWER", "TK_PREFIX", "TK_ON",
  "TK_COLON", "TK_POPEN", "TK_PCLOSE", "TK_BAK_DIR", "TK_BAK_GEN",
  "TK_DOLOCALONLY", "TK_FLAGS", "TK_TEMPDIR", "TK_LOCK_TIMEOUT",
  "TK_HOSTS", "TK_LOCK_TIME", "TK_STRING", "$accept", "config", "block",
  "$@1", "ignore_list", "prefix_list", "alias_list", "block_header",
  "block_body", "stmts", "stmt", "host_list", "host_list_slaves",
  "excl_list", "incl_list", "comp_list", "action", "$@2", "action_stmts",
  "action_stmt", "action_pattern_list", "action_exec_list", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-61)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-55)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int8 yypact[] =
{
      -7,   -34,   -23,   -13,    -6,    -5,    -3,    -2,     6,     8,
      45,    11,    13,    14,    48,    15,    57,    -7,    55,    19,
     -23,    54,   -61,    56,    58,    59,    60,    61,    62,   -61,
     -61,    63,    64,   -61,    65,   -61,   -61,    12,   -61,    66,
     -61,   -61,   -61,   -61,   -61,   -61,   -61,   -61,    69,   -61,
     -61,    -4,   -61,    21,   -61,   -61,   -61,    68,    33,   -61,
      34,    35,    36,    74,    75,    12,   -61,   -61,   -61,    49,
     -61,   -25,    40,    41,    42,   -61,   -61,    81,   -61,   -61,
     -61,   -61,    12,   -61,     0,    44,   -61,    80,   -61,   -61,
      82,    18,   -61,   -61,    47,    10,   -24,    50,   -61,   -61,
     -61,    51,   -61,    85,    88,    67,   -61,    53,   -61,    84,
     -61,    70,    71,   -61,   -61,    18,    72,    90,   -25,    73,
     -61,   -61,   -61,    91,   -61,   -61,   -61
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       2,     0,    20,    27,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     2,     0,     0,
      20,     0,    28,     0,     0,     0,     0,     0,     0,    17,
       5,     0,     0,    24,     0,     1,     3,    30,     4,     0,
      21,    16,     9,    10,    12,    13,    14,    11,     0,    15,
      18,     0,    19,     0,    42,    49,    51,    51,     0,    55,
       0,     0,     0,     0,     0,    30,     8,    22,     7,     0,
      38,    33,    34,    35,     0,    36,    37,     0,    39,    40,
      41,    29,    30,    32,     0,     0,    46,    43,    50,    52,
      52,    57,    31,     6,     0,     0,     0,     0,    64,    66,
      62,     0,    63,     0,     0,     0,    25,     0,    42,    47,
      44,    59,    60,    61,    56,    57,     0,     0,    45,     0,
      65,    67,    58,     0,    26,    48,    23
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int8 yypgoto[] =
{
     -61,    83,   -61,   -61,    78,   -61,   -61,   -61,   -61,   -60,
     -61,    -9,   -61,   -61,    46,   -61,   -61,   -61,   -14,   -61,
     -61,   -61
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int8 yydefgoto[] =
{
       0,    16,    17,    48,    21,    84,    51,    18,    38,    63,
      64,    71,    96,    72,    73,    75,    65,    77,   103,   104,
     111,   112
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int8 yytable[] =
{
      68,     1,     2,     3,    93,    83,    86,    19,   108,     4,
       5,     6,     7,     8,     9,   106,    87,   109,    20,    53,
      10,    11,    92,    54,    55,    56,    57,    58,    22,    94,
      12,    13,    14,    15,    59,    23,    24,    69,    25,    26,
     107,    98,    99,   100,   101,    60,    61,    27,    62,    28,
      29,    33,    30,   102,    31,    32,    34,    35,    37,    41,
      39,    42,    70,    43,    44,    45,    46,    47,    49,    50,
      52,    66,    67,   -53,    76,    78,    79,    80,    81,    85,
      82,    88,    89,    90,    91,    95,    97,   -54,   105,   114,
     119,   110,   113,   115,   117,   124,   126,   116,    40,   118,
      36,   122,     0,    74,     0,     0,     0,     0,     0,     0,
       0,   120,   121,   123,   125
};

static const yytype_int8 yycheck[] =
{
       4,     8,     9,    10,     4,    65,    31,    41,    32,    16,
      17,    18,    19,    20,    21,     5,    41,    41,    41,     7,
      27,    28,    82,    11,    12,    13,    14,    15,    41,    29,
      37,    38,    39,    40,    22,    41,    41,    41,    41,    41,
      30,    23,    24,    25,    26,    33,    34,    41,    36,    41,
       5,     3,    41,    35,    41,    41,    41,     0,     3,     5,
      41,     5,    41,     5,     5,     5,     5,     5,     5,     5,
       5,     5,     3,     5,    41,    41,    41,    41,     4,    30,
       5,    41,    41,    41,     3,    41,     6,     5,    41,     4,
       6,    41,    41,     5,    41,     5,     5,    30,    20,   108,
      17,   115,    -1,    57,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    41,    41,    41,    41
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,     8,     9,    10,    16,    17,    18,    19,    20,    21,
      27,    28,    37,    38,    39,    40,    43,    44,    49,    41,
      41,    46,    41,    41,    41,    41,    41,    41,    41,     5,
      41,    41,    41,     3,    41,     0,    43,     3,    50,    41,
      46,     5,     5,     5,     5,     5,     5,     5,    45,     5,
       5,    48,     5,     7,    11,    12,    13,    14,    15,    22,
      33,    34,    36,    51,    52,    58,     5,     3,     4,    41,
      41,    53,    55,    56,    56,    57,    41,    59,    41,    41,
      41,     4,     5,    51,    47,    30,    31,    41,    41,    41,
      41,     3,    51,     4,    29,    41,    54,     6,    23,    24,
      25,    26,    35,    60,    61,    41,     5,    30,    32,    41,
      41,    62,    63,    41,     4,     5,    30,    41,    53,     6,
      41,    41,    60,    41,     5,    41,     5
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    42,    43,    43,    44,    45,    44,    44,    44,    44,
      44,    44,    44,    44,    44,    44,    44,    44,    44,    44,
      46,    46,    47,    47,    48,    48,    48,    49,    49,    50,
      51,    51,    51,    52,    52,    52,    52,    52,    52,    52,
      52,    52,    53,    53,    53,    53,    54,    54,    54,    55,
      55,    56,    56,    57,    57,    59,    58,    60,    60,    61,
      61,    61,    61,    61,    62,    62,    63,    63
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     0,     2,     2,     0,     6,     4,     4,     3,
       3,     3,     3,     3,     3,     3,     3,     2,     3,     3,
       0,     2,     0,     6,     0,     5,     7,     1,     2,     3,
       0,     3,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     0,     2,     4,     5,     0,     2,     4,     0,
       2,     0,     2,     0,     2,     0,     5,     0,     3,     2,
       2,     2,     1,     1,     0,     2,     0,     2
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYNOMEM         goto yyexhaustedlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)




# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)]);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif






/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YY_USE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */

  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    YYNOMEM;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        YYNOMEM;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          YYNOMEM;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */


  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      goto yyerrlab1;
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 5: /* $@1: %empty  */
#line 626 "cfgfile_parser_processed.y"
                { create_prefix((yyvsp[0].txt)); }
#line 1912 "cfgfile_parser_processed.c"
    break;

  case 6: /* block: TK_PREFIX TK_STRING $@1 TK_BLOCK_BEGIN prefix_list TK_BLOCK_END  */
#line 628 "cfgfile_parser_processed.y"
                { }
#line 1918 "cfgfile_parser_processed.c"
    break;

  case 7: /* block: TK_HOSTS TK_BLOCK_BEGIN alias_list TK_BLOCK_END  */
#line 631 "cfgfile_parser_processed.y"
                { }
#line 1924 "cfgfile_parser_processed.c"
    break;

  case 8: /* block: TK_NOSSL TK_STRING TK_STRING TK_STEND  */
#line 633 "cfgfile_parser_processed.y"
                { create_nossl((yyvsp[-2].txt), (yyvsp[-1].txt)); }
#line 1930 "cfgfile_parser_processed.c"
    break;

  case 9: /* block: TK_DATABASE TK_STRING TK_STEND  */
#line 635 "cfgfile_parser_processed.y"
                { set_database((yyvsp[-1].txt)); }
#line 1936 "cfgfile_parser_processed.c"
    break;

  case 10: /* block: TK_DB_VERSION TK_STRING TK_STEND  */
#line 637 "cfgfile_parser_processed.y"
                { set_database_version((yyvsp[-1].txt)); }
#line 1942 "cfgfile_parser_processed.c"
    break;

  case 11: /* block: TK_REDIS TK_STRING TK_STEND  */
#line 639 "cfgfile_parser_processed.y"
                { set_redis((yyvsp[-1].txt)); }
#line 1948 "cfgfile_parser_processed.c"
    break;

  case 12: /* block: TK_PROTOCOL_VERSION TK_STRING TK_STEND  */
#line 641 "cfgfile_parser_processed.y"
                { set_protocol_version((yyvsp[-1].txt)); }
#line 1954 "cfgfile_parser_processed.c"
    break;

  case 13: /* block: TK_PATCH_MODE TK_STRING TK_STEND  */
#line 643 "cfgfile_parser_processed.y"
                { set_patch_mode((yyvsp[-1].txt)); }
#line 1960 "cfgfile_parser_processed.c"
    break;

  case 14: /* block: TK_IP_VERSION TK_STRING TK_STEND  */
#line 645 "cfgfile_parser_processed.y"
                { set_ip_version((yyvsp[-1].txt)); }
#line 1966 "cfgfile_parser_processed.c"
    break;

  case 15: /* block: TK_TEMPDIR TK_STRING TK_STEND  */
#line 647 "cfgfile_parser_processed.y"
                { set_tempdir((yyvsp[-1].txt)); }
#line 1972 "cfgfile_parser_processed.c"
    break;

  case 17: /* block: TK_NOCYGLOWER TK_STEND  */
#line 650 "cfgfile_parser_processed.y"
                { disable_cygwin_lowercase_hack(); }
#line 1978 "cfgfile_parser_processed.c"
    break;

  case 18: /* block: TK_LOCK_TIMEOUT TK_STRING TK_STEND  */
#line 652 "cfgfile_parser_processed.y"
                { set_lock_timeout((yyvsp[-1].txt)); }
#line 1984 "cfgfile_parser_processed.c"
    break;

  case 19: /* block: TK_LOCK_TIME TK_STRING TK_STEND  */
#line 654 "cfgfile_parser_processed.y"
                { set_lock_time((yyvsp[-1].txt)); }
#line 1990 "cfgfile_parser_processed.c"
    break;

  case 21: /* ignore_list: TK_STRING ignore_list  */
#line 660 "cfgfile_parser_processed.y"
                { create_ignore((yyvsp[-1].txt)); }
#line 1996 "cfgfile_parser_processed.c"
    break;

  case 23: /* prefix_list: prefix_list TK_ON TK_STRING TK_COLON TK_STRING TK_STEND  */
#line 666 "cfgfile_parser_processed.y"
                { create_prefix_entry((yyvsp[-3].txt), on_cygwin_lowercase((yyvsp[-1].txt))); }
#line 2002 "cfgfile_parser_processed.c"
    break;

  case 25: /* alias_list: alias_list TK_STRING TK_COLON TK_STRING TK_STEND  */
#line 672 "cfgfile_parser_processed.y"
                { create_hostinfo_entry((yyvsp[-3].txt), (yyvsp[-1].txt), strdup(csync_port)); }
#line 2008 "cfgfile_parser_processed.c"
    break;

  case 26: /* alias_list: alias_list TK_STRING TK_COLON TK_STRING TK_COLON TK_STRING TK_STEND  */
#line 674 "cfgfile_parser_processed.y"
                { create_hostinfo_entry((yyvsp[-5].txt), (yyvsp[-3].txt), (yyvsp[-1].txt)); }
#line 2014 "cfgfile_parser_processed.c"
    break;

  case 27: /* block_header: TK_GROUP  */
#line 679 "cfgfile_parser_processed.y"
                { create_group(0);  }
#line 2020 "cfgfile_parser_processed.c"
    break;

  case 28: /* block_header: TK_GROUP TK_STRING  */
#line 681 "cfgfile_parser_processed.y"
                { create_group((yyvsp[0].txt)); }
#line 2026 "cfgfile_parser_processed.c"
    break;

  case 29: /* block_body: TK_BLOCK_BEGIN stmts TK_BLOCK_END  */
#line 686 "cfgfile_parser_processed.y"
                { check_group(); }
#line 2032 "cfgfile_parser_processed.c"
    break;

  case 37: /* stmt: TK_KEY TK_STRING  */
#line 701 "cfgfile_parser_processed.y"
                { set_key((yyvsp[0].txt)); }
#line 2038 "cfgfile_parser_processed.c"
    break;

  case 38: /* stmt: TK_AUTO TK_STRING  */
#line 703 "cfgfile_parser_processed.y"
                { set_auto((yyvsp[0].txt)); }
#line 2044 "cfgfile_parser_processed.c"
    break;

  case 39: /* stmt: TK_BAK_DIR TK_STRING  */
#line 705 "cfgfile_parser_processed.y"
                { set_bak_dir((yyvsp[0].txt)); }
#line 2050 "cfgfile_parser_processed.c"
    break;

  case 40: /* stmt: TK_BAK_GEN TK_STRING  */
#line 707 "cfgfile_parser_processed.y"
                { set_bak_gen((yyvsp[0].txt)); }
#line 2056 "cfgfile_parser_processed.c"
    break;

  case 41: /* stmt: TK_FLAGS TK_STRING  */
#line 709 "cfgfile_parser_processed.y"
                { set_flags((yyvsp[0].txt)); }
#line 2062 "cfgfile_parser_processed.c"
    break;

  case 43: /* host_list: host_list TK_STRING  */
#line 715 "cfgfile_parser_processed.y"
                { add_host((yyvsp[0].txt), strdup((yyvsp[0].txt)), 0); }
#line 2068 "cfgfile_parser_processed.c"
    break;

  case 44: /* host_list: host_list TK_STRING TK_AT TK_STRING  */
#line 717 "cfgfile_parser_processed.y"
                { add_host((yyvsp[-2].txt), (yyvsp[0].txt), 0); }
#line 2074 "cfgfile_parser_processed.c"
    break;

  case 47: /* host_list_slaves: host_list_slaves TK_STRING  */
#line 724 "cfgfile_parser_processed.y"
                { add_host((yyvsp[0].txt), strdup((yyvsp[0].txt)), 1); }
#line 2080 "cfgfile_parser_processed.c"
    break;

  case 48: /* host_list_slaves: host_list_slaves TK_STRING TK_AT TK_STRING  */
#line 726 "cfgfile_parser_processed.y"
                { add_host((yyvsp[-2].txt), (yyvsp[0].txt), 1); }
#line 2086 "cfgfile_parser_processed.c"
    break;

  case 50: /* excl_list: excl_list TK_STRING  */
#line 732 "cfgfile_parser_processed.y"
                { add_patt(0, on_cygwin_lowercase((yyvsp[0].txt))); }
#line 2092 "cfgfile_parser_processed.c"
    break;

  case 52: /* incl_list: incl_list TK_STRING  */
#line 738 "cfgfile_parser_processed.y"
                { add_patt(1, on_cygwin_lowercase((yyvsp[0].txt))); }
#line 2098 "cfgfile_parser_processed.c"
    break;

  case 54: /* comp_list: incl_list TK_STRING  */
#line 744 "cfgfile_parser_processed.y"
                { add_patt(2, on_cygwin_lowercase((yyvsp[0].txt))); }
#line 2104 "cfgfile_parser_processed.c"
    break;

  case 55: /* $@2: %empty  */
#line 749 "cfgfile_parser_processed.y"
                { create_action(); }
#line 2110 "cfgfile_parser_processed.c"
    break;

  case 61: /* action_stmt: TK_LOGFILE TK_STRING  */
#line 763 "cfgfile_parser_processed.y"
                { set_action_logfile((yyvsp[0].txt)); }
#line 2116 "cfgfile_parser_processed.c"
    break;

  case 62: /* action_stmt: TK_DOLOCAL  */
#line 765 "cfgfile_parser_processed.y"
                { set_action_dolocal(); }
#line 2122 "cfgfile_parser_processed.c"
    break;

  case 63: /* action_stmt: TK_DOLOCALONLY  */
#line 767 "cfgfile_parser_processed.y"
                { set_action_dolocal_only(); }
#line 2128 "cfgfile_parser_processed.c"
    break;

  case 65: /* action_pattern_list: action_pattern_list TK_STRING  */
#line 773 "cfgfile_parser_processed.y"
                { add_action_pattern(on_cygwin_lowercase((yyvsp[0].txt))); }
#line 2134 "cfgfile_parser_processed.c"
    break;

  case 67: /* action_exec_list: action_exec_list TK_STRING  */
#line 779 "cfgfile_parser_processed.y"
                { add_action_exec((yyvsp[0].txt)); }
#line 2140 "cfgfile_parser_processed.c"
    break;


#line 2144 "cfgfile_parser_processed.c"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      yyerror (YY_("syntax error"));
    }

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;
  ++yynerrs;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturnlab;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturnlab;


/*-----------------------------------------------------------.
| yyexhaustedlab -- YYNOMEM (memory exhaustion) comes here.  |
`-----------------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturnlab;


/*----------------------------------------------------------.
| yyreturnlab -- parsing is finished, clean up and return.  |
`----------------------------------------------------------*/
yyreturnlab:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif

  return yyresult;
}

