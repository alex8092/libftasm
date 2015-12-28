global _ft_isprint

; int	ft_isprint(int c)

_ft_isprint:
	mov rax, rdi
	cmp rax, 32
	jnge .no
	cmp rax, 127
	jge .no
	.yes:
		mov eax, 1
		ret
	.no:
		mov eax, 0
		ret