global _ft_isalpha

;	int ft_isalpha(int c)

_ft_isalpha:
	mov rax, rdi
	cmp rax, 65
	jnge .no
	cmp rax, 90
	jle .yes
	cmp rax, 97
	jnge .no
	cmp rax, 122
	jle .yes
	.no:
		mov rax, 0
		ret
	.yes:
		mov rax, 1
		ret