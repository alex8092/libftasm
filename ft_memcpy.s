global _ft_memcpy

; void	*ft_memcpy(void *dest, const void *src, size_t n);

_ft_memcpy:
	mov rbx, rdi
	mov rax, rdi
	mov rcx, rdx
	rep movsb
	mov rax, rbx
	ret