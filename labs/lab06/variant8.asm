%include 'in_out.asm'
SECTION .data
msg: DB 'Введите x: ', 0
rem: DB 'Выражение: y = (11 + x) * 2 - 6', 0
result DB 'Результат y: ', 0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax, rem
call sprintLF
mov eax, msg
call sprint
mov ecx, x
mov edx, 80
call sread
mov eax, x
call atoi
add eax, 11
mov ebx, 2
mul ebx
sub eax, 6
mov edi, eax
mov eax, result
call sprint
mov eax, edi
call iprintLF
call quit
