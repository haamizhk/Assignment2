# 0 "stra.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "stra.c"




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
# 6 "stra.c" 2
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



# 7 "stra.c" 2


# 8 "stra.c"
size_t Str_getLength(const char src[])
{
    size_t length = 0;
    
# 11 "stra.c" 3 4
   ((
# 11 "stra.c"
   src != 
# 11 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 11 "stra.c"
   "src != NULL"
# 11 "stra.c" 3 4
   , "stra.c", 11, __extension__ __PRETTY_FUNCTION__))
# 11 "stra.c"
                      ;
    while (src[length] != '\0')
    {
        length++;
    }
    return length;
}

char *Str_copy(char dst[], const char src[])
{
    size_t index = 0;
    
# 22 "stra.c" 3 4
   ((
# 22 "stra.c"
   dst != 
# 22 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 22 "stra.c"
   "dst != NULL"
# 22 "stra.c" 3 4
   , "stra.c", 22, __extension__ __PRETTY_FUNCTION__))
# 22 "stra.c"
                      ;
    
# 23 "stra.c" 3 4
   ((
# 23 "stra.c"
   src != 
# 23 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 23 "stra.c"
   "src != NULL"
# 23 "stra.c" 3 4
   , "stra.c", 23, __extension__ __PRETTY_FUNCTION__))
# 23 "stra.c"
                      ;
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
    
# 37 "stra.c" 3 4
   ((
# 37 "stra.c"
   dst != 
# 37 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 37 "stra.c"
   "dst != NULL"
# 37 "stra.c" 3 4
   , "stra.c", 37, __extension__ __PRETTY_FUNCTION__))
# 37 "stra.c"
                      ;
    
# 38 "stra.c" 3 4
   ((
# 38 "stra.c"
   src != 
# 38 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 38 "stra.c"
   "src != NULL"
# 38 "stra.c" 3 4
   , "stra.c", 38, __extension__ __PRETTY_FUNCTION__))
# 38 "stra.c"
                      ;
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
    
# 51 "stra.c" 3 4
   ((
# 51 "stra.c"
   s1 != 
# 51 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 51 "stra.c"
   "s1 != NULL"
# 51 "stra.c" 3 4
   , "stra.c", 51, __extension__ __PRETTY_FUNCTION__))
# 51 "stra.c"
                     ;
    
# 52 "stra.c" 3 4
   ((
# 52 "stra.c"
   s2 != 
# 52 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 52 "stra.c"
   "s2 != NULL"
# 52 "stra.c" 3 4
   , "stra.c", 52, __extension__ __PRETTY_FUNCTION__))
# 52 "stra.c"
                     ;
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
    
# 68 "stra.c" 3 4
   ((
# 68 "stra.c"
   haystack != 
# 68 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 68 "stra.c"
   "haystack != NULL"
# 68 "stra.c" 3 4
   , "stra.c", 68, __extension__ __PRETTY_FUNCTION__))
# 68 "stra.c"
                           ;
    
# 69 "stra.c" 3 4
   ((
# 69 "stra.c"
   needle != 
# 69 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 69 "stra.c"
   "needle != NULL"
# 69 "stra.c" 3 4
   , "stra.c", 69, __extension__ __PRETTY_FUNCTION__))
# 69 "stra.c"
                         ;
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

    return 
# 94 "stra.c" 3 4
          ((void *)0)
# 94 "stra.c"
              ;
}
