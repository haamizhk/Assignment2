/* strp.c
    implementation file for string module using pointers
    author: Haamiz Humayun Kabir */

#include "str.h"
#include <assert.h>

size_t Str_getLength(const char *src)
{
    const char *trace;
    assert(src !=  NULL);
    trace = src;
    while (*trace != '\0')
    {
        trace++;
    }
    return (size_t)(trace - src);
}

char *Str_copy(char *dst, const char *src)
{
    char *start;
    assert(dst != NULL);
    assert(src != NULL);
    start = dst;
    while (*src != '\0')
    {
        *dst = *src;
        src++;
        dst++;
    }
    *dst = '\0';
    return start;
}

char *Str_concat(char *dst, const char *src)
{
    char *start;
    assert(dst != NULL);
    assert(src != NULL);
    start = dst;
    dst = dst + Str_getLength(dst);
    while (*src != '\0')
    {
        *dst = *src;
        src++;
        dst++;
    }
    *dst = '\0';
    return start;
}

int Str_compare(const char *s1, const char *s2)
{
    assert(s1 != NULL);
    assert(s2 != NULL);
    while (*s1 == *s2)
    {
        if (*s1 == '\0')
        {
            return 0;
        }
        s1++;
        s2++;
    }
    return (int)(*s1 - *s2);
}

char *Str_search(const char *haystack, const char *needle)
{
    const char *haystack_trace;
    const char *needle_trace;
    assert(haystack != NULL);
    assert(needle != NULL);
    /* If needle is the empty string, return haystack. */
    if (*needle == '\0')
    {
        return (char *)haystack;
    }
    /* search through haystack for the first char of needle, if a match
        is found then use needle_trace and haystack_trace to iterate
        through to see if a complete match is found, keeping end of
        strings in mind */
    while (*haystack != '\0')
    {
        if (*haystack != *needle)
        {
            haystack++;
            continue;
        }
        haystack_trace = haystack;
        needle_trace = needle;
        while (*needle_trace != '\0' &&
            *haystack_trace == *needle_trace)
        {
            haystack_trace++;
            needle_trace++;
        }
        if (*needle_trace == '\0')
        {
            return (char *)haystack;
        }
        haystack++;
    }
    return NULL;
}