global _ft_isascii

; int	ft_isascii(int c);

_ft_isascii:
	mov rax, rdi
	cmp rax, 0
	jnge .no
	cmp rax, 127
	jnle .no
	mov rax, 1
	ret
	.no:
		xor rax, rax
		ret