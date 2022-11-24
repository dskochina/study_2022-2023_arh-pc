%include 'in_out.asm'

SECTION .data

prim: DB '(x/2+8)3',0
x1: DB 'Введите значение x: ',0
otv1: DB 'Ответ:',0

SECTION .bss
p: RESB 80

SECTION .text
GLOBAL _start
_start:

mov eax,prim
call sprintLF

mov eax,x1
call sprint

mov ecx,p
mov edx,80
call sread

mov eax,p
call atoi

xor edx,edx

mov ebx,2
div ebx
add eax,8
xor ebx,ebx
mov ebx,3
mul ebx

mov edi,eax

mov eax,otv1
call sprintLF
mov eax,edi
call iprintLF

call quit


