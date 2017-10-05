TITLE Program Template     (template.asm)

; Author: Monica Holliday
; Course / Project ID: CS271 class exercise                 Date: 10/3/2017
; Description:

INCLUDE Irvine32.inc

; (insert constant definitions here)

.data
str1	BYTE	"*****",10,13,0
; (insert variable definitions here)

.code
main PROC
mov		ecx, 0
mov		al, '1'
L1:
mov		edx, OFFSET str1
mov		[edx+ecx], al
call	WriteString
inc		al
inc		ecx
cmp		ecx, 5
jl		L1
	
; (insert executable instructions here)

	exit	; exit to operating system
main ENDP

; (insert additional procedures here)

END main