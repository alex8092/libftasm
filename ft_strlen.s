global _ft_strlen

; size_t	ft_strlen(const char *s)

_ft_strlen:
	xor rcx, rcx
	not rcx
	xor rax, rax
	repne scasb
	not rcx
	dec rcx
	mov rax, rcx
	ret