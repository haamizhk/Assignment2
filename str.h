#ifndef STR_H
#define STR_H

/* Returns the number of bytes in the string pointed to by *src, excluding the null byte at the end. The programmer must ensure that *src isn't NULL. */
size_t Str_getLength(const char *src);

/* Copies the string pointed to by *src to *dst, returning dst. The programmer must ensure that *src and *dst are not NULL and that *dst has at least as much memory allocated as *src */
char *Str_copy(char *dst, const char *src);

/* Concatenates the string pointed to by *src to the end of the string pointed to by *dst, returning dst. The programmer must ensure that *src and *dst are not NULL and that *dst has at least as much memory allocated as *src and *dst combined plus 1 (for null byte). */
char *Str_concat(char *dst, const char *src);

/* Compares the strings pointed to by *s1 and *s2 using unsigned characters, returning an integer less than, equal to, or greater than zero if *s1 is, respectively, less than, the same as, or greater than *s2, or equivalently the arithmetic value of subtracting the last compared byte in s2 from s1. The programmer must ensure that *s1 and *s2 are not NULL. */
int Str_compare(const char *s1, const char *s2);

/* Finds the first occurence of the string pointed to by *needle in the string pointed to by *haystack (not including '\0'), returning a pointer to the beginning of the substring or NULL if not found. The programmer must ensure that *haystack and *needle are not NULL. */
char *Str_search(const char *haystack, const char *needle);

#endif