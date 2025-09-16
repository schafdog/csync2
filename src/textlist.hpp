/* -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*- */
#ifndef TEXTLIST_HPP
#define TEXTLIST_HPP

#include "modern_logging.hpp"
#include "csync2.hpp"
#include <stdlib.h>
#include <string>
#include <stdarg.h>
#include "error.hpp"

struct textlist {
    struct textlist *next;
    int operation;
    int intvalue;
    char *value;
    char *value2;
    char *value3;
    char *value4;
    char *value5;
    int num;
    char **values;
    void *data;
    void (*destroy)(void *data);
};

typedef struct textlist *textlist_p;

void textlist_add_struct(struct textlist **listhandle, void *data, void (*destroy) (void *));
void textlist_add_var(struct textlist **listhandle, int intitem, int num, ...);
void textlist_add5(struct textlist **listhandle, const char *item, const char *item2,
				   const char *item3, const char *item4, const char *item5,
				   int intitem, int operation);
void textlist_add5(struct textlist **listhandle, const std::string& item, const std::string& item2,
				   const std::string& item3, const std::string& item4, const std::string& item5,
				   int intitem, int operation);
void textlist_add4(struct textlist **listhandle,
				   const std::string& item, const char *item2, const char *item3,
				   const char *item4, int intitem);
void textlist_add4(struct textlist **listhandle, const char *item, const char *item2, const char *item3,
				   const char *item4, int intitem);
void textlist_add(struct textlist **listhandle, const char *item, int intitem);
int textlist_in_list(struct textlist *listhandle, const char *item, int intitem);
int textlist_in_list(struct textlist *listhandle, const std::string& item, int intitem);
void textlist_add_new2(struct textlist **listhandle,
					   const char *item, const char *item2, int intitem);
void textlist_add_new2(struct textlist **listhandle,
					   const std::string& item, const std::string& item2, int intitem);
void textlist_add_new(struct textlist **listhandle, const char *item, int intitem);
void textlist_add2(struct textlist **listhandle, const char *item, const char *item2, int intitem);
void textlist_add2(struct textlist **listhandle, filename_p item, filename_p item2, int intitem);
void textlist_add3(struct textlist **listhandle, const char *item, const char *item2, const char *item3, int intitem);
void textlist_add3(struct textlist **listhandle, const std::string& item, const char *item2, const char *item3, int intitem);
void textlist_add_new3(struct textlist **listhandle, filename_p filename, const char *checktxt, const char *operation);
void textlist_free(struct textlist *listhandle);
void textlist_free_struct(struct textlist *listhandle);
#endif
