/*  -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 *  csync2 - cluster synchronization tool, 2nd generation
 *  LINBIT Information Technologies GmbH <http://www.linbit.com>
 *  Copyright (C) 2004, 2005, 2006  Clifford Wolf <clifford@clifford.at>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

%{
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

%}


%union {
	char *txt;
}

%token TK_BLOCK_BEGIN TK_BLOCK_END TK_STEND TK_AT TK_AUTO
%token TK_NOSSL TK_IGNORE TK_GROUP TK_HOST TK_EXCL TK_INCL TK_COMP TK_KEY TK_DATABASE
%token TK_DB_VERSION TK_PROTOCOL_VERSION TK_PATCH_MODE TK_IP_VERSION TK_REDIS
%token TK_ACTION TK_PATTERN TK_EXEC TK_DOLOCAL TK_LOGFILE TK_NOCYGLOWER
%token TK_PREFIX TK_ON TK_COLON TK_POPEN TK_PCLOSE
%token TK_BAK_DIR TK_BAK_GEN TK_DOLOCALONLY
%token TK_FLAGS
%token TK_TEMPDIR
%token TK_LOCK_TIMEOUT TK_HOSTS TK_LOCK_TIME
%token <txt> TK_STRING

%%

config:
	/* empty */
|	block config
;

block:
	block_header block_body
|	TK_PREFIX TK_STRING
		{ create_prefix($2); }
		TK_BLOCK_BEGIN prefix_list TK_BLOCK_END
		{ }
|	TK_HOSTS 
		TK_BLOCK_BEGIN alias_list TK_BLOCK_END
		{ }
|	TK_NOSSL TK_STRING TK_STRING TK_STEND
		{ create_nossl($2, $3); }
|	TK_DATABASE TK_STRING TK_STEND
		{ set_database($2); }
|	TK_DB_VERSION TK_STRING TK_STEND
		{ set_database_version($2); }
|	TK_REDIS TK_STRING TK_STEND
		{ set_redis($2); }
|	TK_PROTOCOL_VERSION TK_STRING TK_STEND
		{ set_protocol_version($2); }
|	TK_PATCH_MODE TK_STRING TK_STEND
		{ set_patch_mode($2); }
|	TK_IP_VERSION TK_STRING TK_STEND
		{ set_ip_version($2); }
|	TK_TEMPDIR TK_STRING TK_STEND
		{ set_tempdir($2); }
|	TK_IGNORE ignore_list TK_STEND
|	TK_NOCYGLOWER TK_STEND
		{ disable_cygwin_lowercase_hack(); }
|	TK_LOCK_TIMEOUT TK_STRING TK_STEND
		{ set_lock_timeout($2); }
|	TK_LOCK_TIME TK_STRING TK_STEND
		{ set_lock_time($2); }
;

ignore_list:
	/* empty */
|	TK_STRING ignore_list
		{ create_ignore($1); }
;

prefix_list:
	/* empty */
|	prefix_list TK_ON TK_STRING TK_COLON TK_STRING TK_STEND
		{ create_prefix_entry($3, on_cygwin_lowercase($5)); }
;

alias_list:
	/* empty */
|	alias_list TK_STRING TK_COLON TK_STRING TK_STEND
                { create_hostinfo_entry($2, $4, strdup(csync_port)); }
|	alias_list TK_STRING TK_COLON TK_STRING TK_COLON TK_STRING TK_STEND
                { create_hostinfo_entry($2, $4, $6); }
;

block_header:
	TK_GROUP
		{ create_group(0);  }
|	TK_GROUP TK_STRING
		{ create_group($2); }
;

block_body:
	TK_BLOCK_BEGIN stmts TK_BLOCK_END
		{ check_group(); }
;

stmts:
	/* empty */
|	stmt TK_STEND stmts
|	action stmts
;

stmt:
	TK_HOST host_list
|	TK_EXCL excl_list
|	TK_INCL incl_list
|	TK_COMP comp_list
|	TK_KEY TK_STRING
		{ set_key($2); }
|	TK_AUTO TK_STRING
		{ set_auto($2); }
|	TK_BAK_DIR TK_STRING
		{ set_bak_dir($2); }
|	TK_BAK_GEN TK_STRING
		{ set_bak_gen($2); }
|	TK_FLAGS TK_STRING
		{ set_flags($2); }
;

host_list:
	/* empty */
|	host_list TK_STRING
		{ add_host($2, strdup($2), 0); }
|	host_list TK_STRING TK_AT TK_STRING
		{ add_host($2, $4, 0); }
|	host_list TK_POPEN host_list_slaves TK_PCLOSE host_list
;

host_list_slaves:
	/* empty */
|	host_list_slaves TK_STRING
		{ add_host($2, strdup($2), 1); }
|	host_list_slaves TK_STRING TK_AT TK_STRING
		{ add_host($2, $4, 1); }
;

excl_list:
	/* empty */
|	excl_list TK_STRING
		{ add_patt(0, on_cygwin_lowercase($2)); }
;

incl_list:
	/* empty */
|	incl_list TK_STRING
		{ add_patt(1, on_cygwin_lowercase($2)); }
;

comp_list:
	/* empty */
|	incl_list TK_STRING
		{ add_patt(2, on_cygwin_lowercase($2)); }
;

action:
	TK_ACTION
		{ create_action(); }
	TK_BLOCK_BEGIN action_stmts TK_BLOCK_END
;


action_stmts:
	/* empty */
|	action_stmt TK_STEND action_stmts
;

action_stmt:
	TK_PATTERN action_pattern_list
|	TK_EXEC action_exec_list
|	TK_LOGFILE TK_STRING
		{ set_action_logfile($2); }
|	TK_DOLOCAL
		{ set_action_dolocal(); }
|	TK_DOLOCALONLY
		{ set_action_dolocal_only(); }
;

action_pattern_list:
	/* empty */
|	action_pattern_list TK_STRING
		{ add_action_pattern(on_cygwin_lowercase($2)); }
;

action_exec_list:
	/* empty */
|	action_exec_list TK_STRING
		{ add_action_exec($2); }
;

