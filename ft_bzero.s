
global	_ft_bzero

	; void	ft_bzero(void *p, size_t len);

_ft_bzero:
	push rcx
	mov rax, 0
	mov rcx, rsi
	rep stosb
	pop rcx
	ret
