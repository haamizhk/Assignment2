/* stra.c
    implementation file for string module using arrays
    author: Haamiz Humayun Kabir */

#include "str.h"
#include <assert.h>

size_t Str_getLength(const char src[])
{
    size_t length = 0;
    assert(src != NULL);
    while (src[length] != '\0')
    {
        length++;
    }
    return length;
}

char *Str_copy(char dst[], const char src[])
{
    size_t index = 0;
    assert(dst != NULL);
    assert(src != NULL);
    while (src[index] != '\0')
    {
        dst[index] = src[index];
        index++;
    }
    dst[index] = '\0';
    return dst;
}

char *Str_concat(char dst[], const char src[])
{
    size_t index = 0;
    size_t dst_length = Str_getLength(dst);
    assert(dst != NULL);
    assert(src != NULL);
    while (src[index] != '\0')
    {
        dst[dst_length + index] = src[index];
        index++;
    }
    dst[dst_length + index] = '\0';
    return dst;
}

int Str_compare(const char s1[], const char s2[])
{
    size_t index = 0;
    assert(s1 != NULL);
    assert(s2 != NULL);
    while (s1[index] == s2[index])
    {
        if (s1[index] == '\0')
        {
            return 0;
        }
        index++;
    }
    return (int)(s1[index] - s2[index]);
}

char *Str_search(const char haystack[], const char needle[])
{
    size_t haystack_index = 0;
    size_t needle_index;
    assert(haystack != NULL);
    assert(needle != NULL);
    if (needle[0] == '\0')
    {
        return (char *)haystack;
    }
    while (haystack[haystack_index] != '\0')
    {
        if (haystack[haystack_index] == needle[0])
        {
            size_t possible_match_index = haystack_index;
            needle_index = 0;
            while (needle[needle_index] != '\0' &&
                haystack[possible_match_index] == needle[needle_index])
            {
                possible_match_index++;
                needle_index++;
            }
            if (needle[needle_index] == '\0')
            {
                return (char *)haystack + haystack_index;
            }
        }
        haystack_index++;
    }

    return NULL;
}