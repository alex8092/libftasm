global _ft_isdigit

; int	ft_isdigit(int c)

_ft_isdigit:
	mov rax, rdi
	cmp rax, 48
	jnge .no
	cmp rax, 57
	jnle .no
	mov rax, 1
	ret
	.no:
		xor rax, rax
		ret