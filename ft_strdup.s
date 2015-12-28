global _ft_strdup
extern _ft_strlen
extern _malloc
extern _ft_memcpy

; char	*ft_strdup(const char *s)

_ft_strdup:
	push rbp
	mov rbp, rsp
	sub rsp, 0x20
	mov qword [rbp - 0x8], rdi
	mov qword [rbp - 0x10], 0
	xor rcx, rcx
	not rcx
	xor rax, rax
	repne scasb
	not rcx
	dec rcx
	mov rax, rcx
	inc rax
	mov [rbp - 0x10], rax
	mov rdi, rax
	call _malloc
	mov rdi, rax
	mov rsi, [rbp - 0x8]
	mov rdx, [rbp - 0x10]
	call _ft_memcpy
	leave
	ret
