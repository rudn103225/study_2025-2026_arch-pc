%include 'in_out.asm'
SECTION .data
msg_x: DB 'Введите x: ',0
msg_a: DB 'Введите a: ',0
msg_res: DB 'Результат: ',0
SECTION .bss
x: RESB 10
a: RESB 10
SECTION .text
GLOBAL _start
_start:
mov eax, msg_x
call sprint
mov ecx, x
mov edx, 10
call sread
mov eax, msg_a
call sprint
mov ecx, a
mov edx, 10
call sread
mov eax, x
call atoi
mov [x], eax
mov eax, a
call atoi
mov [a], eax
mov ebx, [a]
cmp ebx, 3
jl case1
mov eax, [x]
add eax, 1
jmp result
case1:
mov eax, [a]
mov ebx, 3
mul ebx
result:
mov ebx, eax
mov eax, msg_res
call sprint
mov eax, ebx
call iprintLF
call quit
