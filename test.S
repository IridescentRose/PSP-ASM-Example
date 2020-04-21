#include <regdef.h>

.data
string:    .asciiz "Hello World!\n"
.globl module_info

.set push

.section .lib.ent.top
.align 2
.word 0                                             
__lib_ent_top:
nop

.section .lib.ent.btm
.align 2
__lib_ent_bottom:
.word 0
nop

.section .lib.stub.top
.align 2
.word 0
nop
__lib_stub_top:

.section .lib.stub.btm
.align 2
__lib_stub_bottom:
.word 0

.set pop

.text

.section .rodata.sceModuleInfo
module_info:
.align 4
.word 0x80000001
.string "Stardust"
nop
nop
nop
nop
.word _gp
.word __lib_ent_top
.word __lib_ent_bottom
.word __lib_stub_top
.word __lib_stub_bottom
nop
nop
nop

.text
.globl main
main:
	jal pspDebugScreenInit
	
	la a0, string
	jal pspDebugScreenPrintf

loop:
	j loop

	li v0, 10
	syscall