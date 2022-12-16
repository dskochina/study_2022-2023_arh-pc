%include 'in_out.asm'
SECTION .data
	ms1 db "Функция :f(x)=7(x+1) ", 0
	ms2 db "Результат: ", 0
SECTION .text
global _start

_start:
mov eax,ms1
call sprintLF
pop ecx
pop edx
sub ecx,1
mov esi,0
mov ebx,7

next:
cmp ecx,0h
jz _end
pop eax
call atoi
call _calcul
loop next

_end:
mov eax, ms2
call sprint
mov eax, esi
call iprintLF
call quit

_calcul:
add eax,1
mul ebx
add esi,eax
ret

