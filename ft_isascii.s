global _ft_isascii

; int	ft_isascii(int c);

_ft_isascii:
	cmp rdi, 0
	jnge .no
	cmp rdi, 127
	jnle .no
	mov rax, 1
	ret
	.no:
		xor rax, rax
		ret