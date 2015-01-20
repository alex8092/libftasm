global _ft_isalpha

;	int ft_isalpha(int c)

_ft_isalpha:
	cmp rdi, 65
	jnge .no
	cmp rdi, 90
	jle .yes
	cmp rdi, 97
	jnge .no
	cmp rdi, 122
	jle .yes
	.no:
		mov rax, 0
		ret
	.yes:
		mov rax, 1
		ret