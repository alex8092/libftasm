global _ft_tolower

; int ft_toupper(int c)

_ft_tolower:
	mov rax, rdi
	cmp rax, 'A'
	jnge .end
	cmp rax, 'Z'
	jg .end
	add rax, 32
	.end:
		ret