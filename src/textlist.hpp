
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

typedef struct text_list *text_list_p;

static inline void textlist_add_struct(struct textlist **listhandle, void *data, void (*destroy) (void *))
{
    struct textlist *tmp = *listhandle;
#ifdef __cplusplus
    *listhandle = static_cast<struct textlist*>(malloc(sizeof(struct textlist)));
#else
    *listhandle = (struct textlist*)malloc(sizeof(struct textlist));
#endif
    (*listhandle)->intvalue = 0;
    (*listhandle)->data = data;
    (*listhandle)->destroy = destroy;
    (*listhandle)->next = tmp;
}

static inline void textlist_add_var(struct textlist **listhandle, int intitem, int num, ...) {
    /* Initializing arguments to store all values after num */
    struct textlist *tmp = *listhandle;
    va_list arguments;

#ifdef __cplusplus
    *listhandle = static_cast<struct textlist*>(malloc(sizeof(struct textlist)));
    (*listhandle)->values = static_cast<char**>(calloc(num,sizeof(char*)));
#else
    *listhandle = (struct textlist*)malloc(sizeof(struct textlist));
    (*listhandle)->values = (char**)calloc(num,sizeof(char*));
#endif
    (*listhandle)->intvalue = intitem;
    (*listhandle)->num = num;
    (*listhandle)->data = NULL;
    (*listhandle)->destroy = NULL;
    va_start ( arguments, num );           
    /* Sum all the inputs; we still rely on the function caller to tell us how
     * many there are */
    for ( int x = 0; x < num; x++ ) {
	const char *item = va_arg ( arguments, char * ); 
	(*listhandle)->values[x] = (item  ? strdup(item)  : NULL);
    }
    va_end ( arguments );                  // Cleans up the list
    (*listhandle)->next = tmp;
}

static inline void textlist_add5(struct textlist **listhandle, const char *item, const char *item2, 
				 const char *item3, const char *item4, const char *item5,
				 int intitem, int operation)
{
	struct textlist *tmp = *listhandle;
#ifdef __cplusplus
	*listhandle = static_cast<struct textlist*>(malloc(sizeof(struct textlist)));
#else
	*listhandle = (struct textlist*)malloc(sizeof(struct textlist));
#endif
	(*listhandle)->intvalue = intitem;
	(*listhandle)->operation = operation;
	(*listhandle)->value  = (item  ? strdup(item)  : 0);
	(*listhandle)->value2 = (item2 ? strdup(item2) : 0);
	(*listhandle)->value3 = (item3 ? strdup(item3) : 0);
	(*listhandle)->value4 = (item4 ? strdup(item4) : 0);
	(*listhandle)->value5 = (item5 ? strdup(item5) : 0);
	(*listhandle)->next = tmp;
}

static inline void textlist_add5(struct textlist **listhandle, const std::string& item, const std::string& item2, 
				 const std::string& item3, const std::string& item4, const std::string& item5,
				 int intitem, int operation)
{
    textlist_add5(listhandle, item.c_str(), item2.c_str(), item3.c_str(), item4.c_str(), item5.c_str(), intitem, operation);
}

static inline void textlist_add4(struct textlist **listhandle, const std::string& item, const std::string& item2, const std::string& item3, 
                				 const std::string& item4, int intitem) 
{
    textlist_add5(listhandle, item.c_str(), item2.c_str(), item3.c_str(), item4.c_str(), 0, intitem, 0);
}

static inline void textlist_add4(struct textlist **listhandle, const char *item, const char *item2, const char *item3, 
				 const char *item4, int intitem) 
{
    textlist_add5(listhandle, item, item2, item3, item4, 0, intitem, 0);
}

static inline void textlist_add(struct textlist **listhandle, const char *item, int intitem)
{
  textlist_add4(listhandle, item, 0, 0, 0, intitem);
}

static inline int textlist_in_list(struct textlist *listhandle, const char *item, int intitem) {
  while (listhandle) {
    if (!strcmp(listhandle->value, item)) {
      listhandle->intvalue = intitem;
      return 1;
    }
    listhandle = listhandle->next;
  };
  return 0;
}

static inline int textlist_in_list(struct textlist *listhandle, const std::string& item, int intitem) {
    return textlist_in_list(listhandle, item.c_str(), intitem);
}


static inline void textlist_add_new2(struct textlist **listhandle,
				     const char *item, const char *item2, int intitem)
{
    if (!(*listhandle) || !textlist_in_list(*listhandle, item, intitem)) {
		textlist_add(listhandle, item, intitem);
		(*listhandle)->value2 = (item2 ? strdup(item2) : 0);
		csync_debug(3, "Adding textlist_add_new: %s\n", item);
    }
    
    else {
		csync_debug(3, "Skipping textlist_add_new: %s\n", item);
	}
}

static inline void textlist_add_new(struct textlist **listhandle, const char *item, int intitem)
{
    textlist_add_new2(listhandle, item, 0, intitem);
}

static inline void textlist_add2(struct textlist **listhandle, const char *item, const char *item2, int intitem)
{
  textlist_add4(listhandle, item, item2, 0, 0, intitem);
}

static inline void textlist_add2(struct textlist **listhandle, filename_p item, filename_p item2, int intitem)
{
  textlist_add4(listhandle, item, item2, 0, 0, intitem);
}


static inline void textlist_add3(struct textlist **listhandle, const char *item, const char *item2, const char *item3, int intitem)
{
  textlist_add4(listhandle, item, item2, item3, 0, intitem);
}

static inline void textlist_add3(struct textlist **listhandle, const std::string& item, const char *item2, const char *item3, int intitem)
{
  textlist_add4(listhandle, item.c_str(), item2, item3, 0, intitem);
}

static inline void textlist_add_new3(struct textlist **listhandle, filename_p filename, const char *checktxt, const char *operation)
{
    if (!(*listhandle) || !textlist_in_list(*listhandle, filename, 0)) {
	textlist_add3(listhandle, filename, checktxt, operation, 0);
	    csync2::g_logger.log(csync2::LogLevel::Debug, 3, "Adding textlist_add_new3: %s\n", filename.c_str());
    }
    else {
	    csync_debug(3, "Skipping textlist_add_new3: %s\n", filename.c_str());
  }
}

static inline void textlist_free(struct textlist *listhandle)
{
	struct textlist *next;
	while (listhandle != 0) {
		next = listhandle->next;
		free(listhandle->value);
		if (listhandle->value2)
			free(listhandle->value2);
		if ( listhandle->value3 )
			free(listhandle->value3);
		if ( listhandle->value4 )
			free(listhandle->value4);
		free(listhandle);
		listhandle = next;
	}
}

static inline void textlist_free_struct(struct textlist *listhandle)
{
    struct textlist *next;
    while (listhandle != 0) {
	next = listhandle->next;
	if (listhandle->data) 
	    listhandle->destroy(listhandle->data);
	free(listhandle);
	listhandle = next;
    }
}
#endif
