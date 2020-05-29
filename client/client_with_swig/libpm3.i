%module libpm3
%{
/* Includes the header in the wrapper code */
#include "libpm3.h"
%}

/* Parse the header file to generate wrappers */
%include "libpm3.h"
