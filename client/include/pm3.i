%module pm3
%{
/* Includes the header in the wrapper code */
#include "pm3.h"
%}

/* Parse the header file to generate wrappers */
%include "pm3.h"
