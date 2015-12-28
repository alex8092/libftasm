global _ft_strcat

; char *ft_strcat(char *dest, const char *src)

_ft_strcat:
	mov rbx, rdi
	xor rcx, rcx
	not rcx
	xor rax, rax
	cld
	repne scasb
	dec rdi
	.fill:
		movsb
		cmp byte [rsi], 0
		jne .fill
	mov byte [rdi], 0
	mov rax, rbx
	ret