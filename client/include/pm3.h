#ifndef LIBPM3_H
#define LIBPM3_H

#ifdef SWIG
%module pm3
%{
/* Include the header in the wrapper code */
#include "pm3.h"
%}

/* Strip "pm3_" from API functions for SWIG */
%rename("%(strip:[pm3_])s") "";
/* Parse the header file to generate wrappers */
#endif

void pm3_open(void);
int pm3_console(char *Cmd);
void pm3_close(void);
#endif
