
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

LEA SI , string1  ;Load Effective Adress
LEA DI , string2  ;Loads the addresses of string into indexes

MOV AH, 0h
MOV CX, k


L1:

LODSB   ;increases si by 1
PUSH ax ;Stack - LIFO

LOOP L1

MOV CX , k


L2:

POP AX ;Stack - LIFO
STOSB  ;increases di by 1

LOOP L2
 
ret

k dw 4

string1 db 'ceng'    ;define the array1
string2 db k dup(?)  ;define the empty array




