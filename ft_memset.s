global _ft_memset

; void	*memset(void *s, int c, size_t n);

_ft_memset:
	mov rbx, rdi
	mov rax, rdi
	mov rcx, rdx
	mov rax, rsi
	rep stosb
	mov rax, rbx
	ret