global _ft_isdigit

; int	ft_isdigit(int c)

_ft_isdigit:
	cmp rdi, 48
	jnge .no
	cmp rdi, 57
	jnle .no
	mov rax, 1
	.end:
		ret
	.no:
		xor rax, rax
		ret