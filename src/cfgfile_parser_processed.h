/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

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

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

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
#line 603 "cfgfile_parser_processed.y"

	char *txt;

#line 153 "cfgfile_parser_processed.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_CFGFILE_PARSER_PROCESSED_H_INCLUDED  */
