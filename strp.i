# 0 "strp.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "strp.c"




# 1 "str.h" 1






# 1 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 1 3 4
# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4

# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 209 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 321 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 8 "str.h" 2






# 13 "str.h"
size_t Str_getLength(const char *src);




char *Str_copy(char *dst, const char *src);





char *Str_concat(char *dst, const char *src);







int Str_compare(const char *s1, const char *s2);





char *Str_search(const char *haystack, const char *needle);
# 6 "strp.c" 2
# 1 "/usr/include/assert.h" 1 3 4
# 35 "/usr/include/assert.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 392 "/usr/include/features.h" 3 4
# 1 "/usr/include/features-time64.h" 1 3 4
# 20 "/usr/include/features-time64.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 21 "/usr/include/features-time64.h" 2 3 4
# 1 "/usr/include/bits/timesize.h" 1 3 4
# 19 "/usr/include/bits/timesize.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 20 "/usr/include/bits/timesize.h" 2 3 4
# 22 "/usr/include/features-time64.h" 2 3 4
# 393 "/usr/include/features.h" 2 3 4
# 490 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 551 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 552 "/usr/include/sys/cdefs.h" 2 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 553 "/usr/include/sys/cdefs.h" 2 3 4
# 491 "/usr/include/features.h" 2 3 4
# 514 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4




# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 6 "/usr/include/gnu/stubs.h" 2 3 4


# 1 "/usr/include/gnu/stubs-lp64.h" 1 3 4
# 9 "/usr/include/gnu/stubs.h" 2 3 4
# 515 "/usr/include/features.h" 2 3 4
# 36 "/usr/include/assert.h" 2 3 4
# 64 "/usr/include/assert.h" 3 4




# 67 "/usr/include/assert.h" 3 4
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 7 "strp.c" 2


# 8 "strp.c"
size_t Str_getLength(const char *src)
{
    const char *trace;
    
# 11 "strp.c" 3 4
   ((
# 11 "strp.c"
   src != 
# 11 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 11 "strp.c"
   "src != NULL"
# 11 "strp.c" 3 4
   , "strp.c", 11, __extension__ __PRETTY_FUNCTION__))
# 11 "strp.c"
                       ;
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
    
# 23 "strp.c" 3 4
   ((
# 23 "strp.c"
   dst != 
# 23 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 23 "strp.c"
   "dst != NULL"
# 23 "strp.c" 3 4
   , "strp.c", 23, __extension__ __PRETTY_FUNCTION__))
# 23 "strp.c"
                      ;
    
# 24 "strp.c" 3 4
   ((
# 24 "strp.c"
   src != 
# 24 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 24 "strp.c"
   "src != NULL"
# 24 "strp.c" 3 4
   , "strp.c", 24, __extension__ __PRETTY_FUNCTION__))
# 24 "strp.c"
                      ;
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
    
# 39 "strp.c" 3 4
   ((
# 39 "strp.c"
   dst != 
# 39 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 39 "strp.c"
   "dst != NULL"
# 39 "strp.c" 3 4
   , "strp.c", 39, __extension__ __PRETTY_FUNCTION__))
# 39 "strp.c"
                      ;
    
# 40 "strp.c" 3 4
   ((
# 40 "strp.c"
   src != 
# 40 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 40 "strp.c"
   "src != NULL"
# 40 "strp.c" 3 4
   , "strp.c", 40, __extension__ __PRETTY_FUNCTION__))
# 40 "strp.c"
                      ;
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
    
# 55 "strp.c" 3 4
   ((
# 55 "strp.c"
   s1 != 
# 55 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 55 "strp.c"
   "s1 != NULL"
# 55 "strp.c" 3 4
   , "strp.c", 55, __extension__ __PRETTY_FUNCTION__))
# 55 "strp.c"
                     ;
    
# 56 "strp.c" 3 4
   ((
# 56 "strp.c"
   s2 != 
# 56 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 56 "strp.c"
   "s2 != NULL"
# 56 "strp.c" 3 4
   , "strp.c", 56, __extension__ __PRETTY_FUNCTION__))
# 56 "strp.c"
                     ;
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
    
# 73 "strp.c" 3 4
   ((
# 73 "strp.c"
   haystack != 
# 73 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 73 "strp.c"
   "haystack != NULL"
# 73 "strp.c" 3 4
   , "strp.c", 73, __extension__ __PRETTY_FUNCTION__))
# 73 "strp.c"
                           ;
    
# 74 "strp.c" 3 4
   ((
# 74 "strp.c"
   needle != 
# 74 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 74 "strp.c"
   "needle != NULL"
# 74 "strp.c" 3 4
   , "strp.c", 74, __extension__ __PRETTY_FUNCTION__))
# 74 "strp.c"
                         ;

    if (*needle == '\0')
    {
        return (char *)haystack;
    }




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
    return 
# 105 "strp.c" 3 4
          ((void *)0)
# 105 "strp.c"
              ;
}
