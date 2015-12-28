global _ft_toupper

; int _ft_toupper(int c)

_ft_toupper:
	mov rax, rdi
	cmp rax, 'a'
	jnge .end
	cmp rax, 'z'
	jg .end
	sub rax, 32
	.end:
		ret