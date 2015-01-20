global _ft_strcat

; char *ft_strcat(char *dest, const char *src)

_ft_strcat:
	push rdi
	.to_end:
		mov al, [rdi]
		or al, al
		jz _ft_strcat.fill
		inc rdi
		jmp .to_end
	.fill:
		mov al, [rsi]
		or al, al
		jz _ft_strcat.end
		stosb
		inc rsi
		jmp _ft_strcat.fill
	.end:
		mov byte [rdi], 0
		pop rdi
		mov rax, rdi
		ret