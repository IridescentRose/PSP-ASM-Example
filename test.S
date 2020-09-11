#include <regdef.h>

.data
string:    .asciiz "Hello World!\n"

.text
.globl main
main:
	jal pspDebugScreenInit
	
	la a0, string
	jal pspDebugScreenPrintf

loop:
	j loop
